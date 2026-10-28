<#
.SYNOPSIS
Detecta e remove com seguranca as pastas de skills duplicadas dentro dos projetos individuais,
pois todas as skills agora estao centralizadas e sao carregadas globalmente pela central de skills.

Execute primeiro no modo Simulacao:
powershell -ExecutionPolicy Bypass -File scripts\clean-project-duplicates.ps1
#>

param(
    [switch]$Force = $false
)

$projectsRoot = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$centralSkillsDir = Split-Path $PSScriptRoot -Parent

Write-Host "[*] Raiz dos Projetos: $projectsRoot" -ForegroundColor Cyan
Write-Host "[*] Escaneando pastas de skills duplicadas nos projetos..." -ForegroundColor Cyan

$foundDirs = @()

Get-ChildItem -LiteralPath $projectsRoot -Directory | Where-Object { $_.FullName -ne $centralSkillsDir } | ForEach-Object {
    $projectDir = $_.FullName
    $candidatePaths = @(
        (Join-Path $projectDir ".agent\skills"),
        (Join-Path $projectDir ".agents\skills")
    )
    # Check one level deeper for nested projects like RESUME AI RAPHAEL\O-ESTRATEGISTA
    Get-ChildItem -LiteralPath $projectDir -Directory -Recurse -Depth 1 -ErrorAction SilentlyContinue | ForEach-Object {
        $candidatePaths += (Join-Path $_.FullName ".agent\skills")
        $candidatePaths += (Join-Path $_.FullName ".agents\skills")
    }

    foreach ($p in ($candidatePaths | Select-Object -Unique)) {
        if (Test-Path -LiteralPath $p) {
            $count = (Get-ChildItem -LiteralPath $p -Directory -ErrorAction SilentlyContinue).Count
            if ($count -gt 0) {
                $foundDirs += [PSCustomObject]@{
                    Project = (Split-Path (Split-Path (Split-Path $p -Parent) -Parent) -Leaf) + " \ " + (Split-Path (Split-Path $p -Parent) -Leaf)
                    Path = $p
                    SkillsCount = $count
                }
            }
        }
    }
}

if ($foundDirs.Count -eq 0) {
    Write-Host "[OK] Nenhuma pasta duplicada encontrada para remover!" -ForegroundColor Green
    return
}

Write-Host "`nForam encontradas as seguintes pastas de skills duplicadas:" -ForegroundColor Yellow
$foundDirs | Select-Object Path, SkillsCount | Format-Table -AutoSize

if (-not $Force) {
    Write-Host "`n[AVISO] Modo SIMULACAO ativo. Nenhum arquivo foi excluido." -ForegroundColor Cyan
    Write-Host "Para executar a exclusao definitiva das pastas duplicadas e liberar espaco, execute:" -ForegroundColor White
    Write-Host "powershell -ExecutionPolicy Bypass -File .\scripts\clean-project-duplicates.ps1 -Force" -ForegroundColor Green
} else {
    Write-Host "`n[*] Excluindo pastas duplicadas..." -ForegroundColor Magenta
    foreach ($item in $foundDirs) {
        Write-Host "Removendo: $($item.Path) ($($item.SkillsCount) skills)..." -ForegroundColor DarkGray
        Remove-Item -LiteralPath $item.Path -Recurse -Force
    }
    Write-Host "[OK] Limpeza concluida com sucesso! Os projetos agora estao leves e limpos." -ForegroundColor Green
}

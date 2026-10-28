<#
.SYNOPSIS
Remove com segurança as pastas de skills duplicadas dentro dos projetos individuais,
pois todas as skills agora são carregadas globalmente pela central de skills.

Execute primeiro no modo Simulação (-WhatIf ou deixe $DryRun = $true):
powershell -ExecutionPolicy Bypass -File scripts\clean-project-duplicates.ps1
#>

param(
    [switch]$Force = $false
)

$projectsRoot = "C:\Users\rafae\OneDrive\Área de Trabalho\PROJETOS"
$centralSkillsDir = "C:\Users\rafae\OneDrive\Área de Trabalho\PROJETOS\skills"

Write-Host "🔍 Verificando pastas de skills duplicadas nos projetos..." -ForegroundColor Cyan

$targets = @(
    "anotacoes\.agent\skills",
    "anotacoes\.agents\skills",
    "ebooks\.agent\skills",
    "Editor de Vídeo\.agent\skills",
    "LPRaphas\.agent\skills",
    "O Estrategista\.agent\skills",
    "RESUME AI RAPHAEL\.agent\skills",
    "RESUME AI RAPHAEL\O-ESTRATEGISTA\.agents\skills",
    "UNIBE\.agent\skills",
    "Voz da Mata\.agent\skills"
)

$foundDirs = @()
foreach ($rel in $targets) {
    $full = Join-Path $projectsRoot $rel
    if (Test-Path $full) {
        $count = (Get-ChildItem -Path $full -Directory).Count
        $foundDirs += [PSCustomObject]@{
            Path = $full
            SkillsCount = $count
        }
    }
}

if ($foundDirs.Count -eq 0) {
    Write-Host "✅ Nenhuma pasta duplicada encontrada para remover!" -ForegroundColor Green
    return
}

Write-Host "`nForam encontradas as seguintes pastas duplicadas:" -ForegroundColor Yellow
$foundDirs | Format-Table -AutoSize

if (-not $Force) {
    Write-Host "`n⚠️ Modo SIMULAÇÃO ativo. Nenhum arquivo foi excluído." -ForegroundColor Cyan
    Write-Host "Para executar a exclusão definitiva das pastas duplicadas e liberar espaço, execute:" -ForegroundColor White
    Write-Host ".\scripts\clean-project-duplicates.ps1 -Force" -ForegroundColor Green
} else {
    Write-Host "`n🗑️ Excluindo pastas duplicadas..." -ForegroundColor Magenta
    foreach ($item in $foundDirs) {
        Write-Host "Removendo: $($item.Path)" -ForegroundColor DarkGray
        Remove-Item -Path $item.Path -Recurse -Force
    }
    Write-Host "✅ Limpeza concluída com sucesso! Os projetos agora estão limpos e leves." -ForegroundColor Green
}

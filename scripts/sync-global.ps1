<#
.SYNOPSIS
Sincroniza todas as skills deste repositorio para o diretorio global do Antigravity (~/.agents/skills).
#>

$source = Join-Path $PSScriptRoot "..\skills"
$target = Join-Path $env:USERPROFILE ".agents\skills"

if (-not (Test-Path -LiteralPath $target)) {
    New-Item -ItemType Directory -Path $target -Force | Out-Null
}

Write-Host "[*] Sincronizando skills de '$source' para '$target'..." -ForegroundColor Cyan

$count = 0
Get-ChildItem -LiteralPath $source -Directory | ForEach-Object {
    $dest = Join-Path $target $_.Name
    Copy-Item -LiteralPath $_.FullName -Destination $dest -Recurse -Force
    $count++
}

Write-Host "[OK] $count skills sincronizadas com sucesso para o Antigravity global!" -ForegroundColor Green

<#
.SYNOPSIS
Sincroniza todas as skills deste repositório para o diretório global do Antigravity (~/.agents/skills).
#>

$source = Join-Path $PSScriptRoot "..\skills"
$target = Join-Path $env:USERPROFILE ".agents\skills"

if (-not (Test-Path $target)) {
    New-Item -ItemType Directory -Path $target -Force | Out-Null
}

Write-Host "🔄 Sincronizando skills de '$source' para '$target'..." -ForegroundColor Cyan

$count = 0
Get-ChildItem -Path $source -Directory | ForEach-Object {
    $dest = Join-Path $target $_.Name
    Copy-Item -Path $_.FullName -Destination $dest -Recurse -Force
    $count++
}

Write-Host "✅ $count skills sincronizadas com sucesso para o Antigravity global!" -ForegroundColor Green

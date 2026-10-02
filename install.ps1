# Connects this computer's Claude Code and Codex to Axiom.
param([string]$Token)
$ErrorActionPreference = 'Stop'
$api = 'https://www.axiomlift.ai'
$python = $null
foreach ($name in 'py', 'python', 'python3') { if (Get-Command $name -ErrorAction SilentlyContinue) { $python = $name; break } }
if (-not $python) { Write-Host 'Python 3 is needed. Run:  winget install Python.Python.3.12   then open a new PowerShell window and run this again.'; exit 1 }
$dir = Join-Path $HOME '.axiom-context\src'
New-Item -ItemType Directory -Force -Path $dir | Out-Null
foreach ($f in 'axiom.py', 'codex.py', 'git_sync.py', 'opencode.py', 'mcp.py', 'chats.py', 'stress.py', 'scoreboard.py') { Invoke-WebRequest -UseBasicParsing "$api/client/$f" -OutFile (Join-Path $dir $f) }
if ($Token) { & $python (Join-Path $dir 'axiom.py') install --api $api --token $Token } else { & $python (Join-Path $dir 'axiom.py') login --api $api }

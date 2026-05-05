Write-Host "[lite] Day 19 lightweight setup (PowerShell)"
if (Test-Path .venv) { Remove-Item -Recurse -Force .venv }
python -m venv .venv
if ($LASTEXITCODE -ne 0) { throw "Failed to create venv" }
$python = ".\.venv\Scripts\python.exe"
& $python -m pip install -q -U pip
& $python -m pip install -q -r requirements.txt
if ($LASTEXITCODE -ne 0) { throw "Failed to install requirements" }
& $python -m jupytext --to notebook --update notebooks/*.py
if (!(Test-Path .env)) { Copy-Item .env.example .env }
& $python scripts/seed_corpus.py
if ($LASTEXITCODE -ne 0) { throw "Failed to seed corpus" }
& $python scripts/verify_lite.py

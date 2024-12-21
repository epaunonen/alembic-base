# Delete existing venv if exists
if (Test-Path .venv) {
    Remove-Item .venv -Force -Recurse
}

# Create venv and activate it
python -m venv .venv
.venv/Scripts/Activate.ps1

# Install packages
python -m pip install -r venv_cfg/requirements.txt
deactivate
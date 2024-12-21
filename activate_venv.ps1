param ([switch]$u, [switch]$update)

if (-not (Test-Path venv) -or ($u) -or ($update)) {

    # doesn't exist or update desired --> create
    "Creating virtual environment..."
    venv_cfg/create_venv_windows.ps1
    "Done!"
    "Activating venv"
    venv/Scripts/Activate.ps1

} else {

    # venv exists
    "Activating venv"
    venv/Scripts/Activate.ps1

}
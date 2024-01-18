# Get the current working directory
$currentPath = Get-Location

# Combine the current path with "\Hotkeys" to create the source path
$sourcePath = Join-Path $currentPath "Hotkeys"

# Set the destination path
$destinationPath = "E:\"

# Check if the source folder exists
if (Test-Path $sourcePath -PathType Container) {
    # Copy all items from source to destination
    Copy-Item -Path "$sourcePath\*" -Destination $destinationPath -Recurse -Force

    Write-Host "Copy completed successfully."
} else {
    Write-Host "Source folder not found: $sourcePath"
}

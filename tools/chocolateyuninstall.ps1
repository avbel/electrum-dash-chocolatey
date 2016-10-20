$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'electrum-dash'
$softwareName = 'Electrum-DASH*'
$installerType = 'EXE'

$silentArgs = '/S'
$validExitCodes = @(0)

$file = "${Env:ProgramFiles(x86)}\Electrum-DASH\Uninstall.exe"

Uninstall-ChocolateyPackage -PackageName $packageName `
    -FileType $installerType `
    -SilentArgs "$silentArgs" `
    -ValidExitCodes $validExitCodes `
    -File "$file"

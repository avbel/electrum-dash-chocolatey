$ErrorActionPreference = 'Stop';

$version    = '2.4.1'
$packageName= 'electrum-dash'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/dashpay/electrum-dash/releases/download/v$($version)/Electrum-DASH-$($version)-Windows-setup.exe"
$checksum   = 'f3adca34c316a8ca901c8981427e37bbd08712c1'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Electrum-DASH*'

  checksum      = $checksum
  checksumType  = 'sha1'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

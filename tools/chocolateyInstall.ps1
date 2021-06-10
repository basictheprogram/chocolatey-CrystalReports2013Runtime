$ErrorActionPreference = 'Stop';

$data = & (Join-Path -Path (Split-Path -Path $MyInvocation.MyCommand.Path) -ChildPath data.ps1)
$package = 'CrystalReports2013Runtime'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$params = @{
    packageName  = $package
    fileType     = 'msi'
    silentArgs   = '/quiet'
    url          = $data.url
    checksum     = $data.checksum
    checksumType = $data.checksumType
}

Install-ChocolateyPackage @params

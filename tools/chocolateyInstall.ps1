$ErrorActionPreference = 'Stop';

$package = 'CrystalReports2013Runtime'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$params = @{
    packageName  = $package;
    fileType     = 'msi';
    silentArgs   = '/quiet';
    url          = ''

    checksum     = '';
    checksumType = 'sha256';
}

Install-ChocolateyPackage @params


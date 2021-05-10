$ErrorActionPreference = 'Stop';

$package = 'CrystalReports2013Runtime'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$params = @{
    packageName  = $package;
    fileType     = 'msi';
    silentArgs   = '/quiet';
    url          = 'http://gold-images.int.celadonsystems.com/SYSPRO/CrystalRuntimes/CRRuntime_32bit_13_0_14.msi';

    checksum     = '26196e58f9563cf58424530a72c58f6a33b6a15c06dff81027d5990cab7f3f28';
    checksumType = 'sha256';
}

Install-ChocolateyPackage @params

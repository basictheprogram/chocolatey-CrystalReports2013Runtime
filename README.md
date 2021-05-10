# SAP Crystal Reports 2013
All the SAP Crystal Reports Runtime installers are behind a login/password now. The end of life of 2010 is only the first problem. I’ve forked the 2010 package source and will need to rebuilt the package using a private server on the Celadon network for the installer.

I was also wrong, SYSPRO7, by default, uses and installs Crystal Reports 2013 Runtime, I’ll adjust the dependency list to 2013 /but/ 2013 was deprecated Dec 31, 2020 and installer on the BT provided media isn’t the latest release of 2013.

If we want to run a supported version of Crystal Reports Runtime we’ll have to just to 2016 which is supported to Dec 31, 2024 AND 2016 is the last version to support 32-bit which is the version required for SYSPRO7

https://www.crystalreports.com/faq/

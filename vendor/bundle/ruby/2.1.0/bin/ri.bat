@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\RailsInstaller\Ruby2.1.0\bin\ruby.exe" "C:/temp/New_EC-Site-master/vendor/bundle/ruby/2.1.0/bin/ri" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\RailsInstaller\Ruby2.1.0\bin\ruby.exe" "%~dpn0" %*

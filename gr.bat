@echo off

set GROOVY_VER=1.8.2
::set JAVA_DEBUG=-verbose:class -Dgroovy.grape.report.downloads=true 
::set JAVA_DEBUG=-Dgroovy.grape.report.downloads=true 
set JAVA_OPTS=-Dfile.encoding=utf8 %JAVA_OPTS%

set BASE=%~dp0
%JAVA_HOME%\bin\java %JAVA_OPTS% %JAVA_DEBUG% -cp "%BASE%lib\*" ^
    -Dgroovy.base="%BASE%." ^
    -Dgrape.root="%BASE%." ^
    -Dgroovy.version=%GROOVY_VER% ^
    groovy.ui.GroovyMain "%BASE%groovy.gr" %*

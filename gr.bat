@echo off

set BASE=%~dp0
java -cp "%BASE%lib\*" groovy.ui.GroovyMain "%BASE%groovy.gr" %*

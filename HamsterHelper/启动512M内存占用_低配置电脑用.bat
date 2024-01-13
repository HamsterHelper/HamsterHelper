taskkill /f /im mysqld5203.exe

start mysql-5.7.29-win32\bin\mysqld5203 --console --port=5203
start jre\nginx\start

set JAVA_HOME=%~dp0jre
set CLASSPATH=.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;%~dp0main;

set Path=%JAVA_HOME%\bin;

del %~dp0main\pixivMaster-starter-0.0.1.jar

start java -jar -Xms64m -Xmx512m main\HamsterHelper-starter-0.0.1.jar

TIMEOUT /T 300 /NOBREAK

start  http://localhost:7088/admin/
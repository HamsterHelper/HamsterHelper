taskkill /f /im mysqld5203 .exe

start mysql-5.7.29-win32\bin\mysqld5203 --console --port=5203

set JAVA_HOME=%~dp0jre
set CLASSPATH=.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;

set Path=%JAVA_HOME%\bin;

java -jar -Xms64m -Xmx512m jre\lib\pixivMaster-starter-0.0.1.jar

start  http://localhost:7088/admin/
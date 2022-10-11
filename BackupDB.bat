@echo off
set DIRPATH=%cd%
set MYSQLPATH="D:\program files\xampp\mysql\bin"

cd /d %MYSQLPATH%
mysqldump -v --opt --default-character-set=utf8 -u root test > %DIRPATH%\db_structure_test.sql

cd /d %DIRPATH%
git add .
git commit -m "Backup DB"
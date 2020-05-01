: ip=の後にIPを入力
set ip=localhost
: count=の後にpingを送る回数を入力(数字以外入れるとpingが実行されません)
set count=10
: size=の後にpingで送るパケットサイズを入力してください。(数字以外入れるとpingが実行されません)
set size=60000
SET YYYY=%date:~0,4%
SET MM=%date:~5,2%
SET DD=%date:~8,2%
SET TT=%time:~0,2%%time:~3,2%%time:~6,2%
@echo off
ping %ip% -n %count% -l %size% > %homepath%/Desktop/%YYYY%-%MM%-%DD%-%TT%.log
exit



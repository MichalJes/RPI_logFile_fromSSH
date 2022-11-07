ping 127.0.0.1 -n 30 > nul
ssh -T SSH_RPI < RPI_CheckCommands.txt @REM Under RPI insert your Raspberry IP
scp pi@SSH_RPI:~/currentRaport.log C:/Users/xxxxx/Documents/SSH_RPI_logfiles @REM Remember to change the output path of the file
rename C:\Users\xxxxx\Documents\SSH_RPI_logfiles\currentRaport.log %date:~-4,4%-%date:~-7,2%-%date:~-10,2%_RPIReport.log
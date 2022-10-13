@echo off

echo Install extensions

SET listfile=extentions_list.txt

FOR /F %%I IN (%listfile%) DO (
    echo Install %%I
    code --install-extension %%I
    echo .
)

echo Ended

pause

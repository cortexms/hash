@echo off
title hash cleaner

REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f

rd /s /q "%localappdata%\FiveM\FiveM.app\cache"
rd /s /q "%localappdata%\FiveM\FiveM.app\logs"
rd /s /q "%localappdata%\FiveM\FiveM.app\crashes"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\cache"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\nui-storage"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\server-cache"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\server-cache-priv"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\server-cache-ext"
rd /s /q "%localappdata%\FiveM\FiveM.app\data\game-storage"

del /f /s /q %temp%\*.*
rd /s /q %temp%
md %temp%
del /f /s /q "%systemroot%\Temp\*.*"
rd /s /q "%systemroot%\Temp"
md "%systemroot%\Temp"

echo susess!
pause

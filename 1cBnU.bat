@echo off
cls
set curDate=%date:~-4%.%date:~3,2%.%date:~0,2%
echo %curDate% >>1backup.log
echo ZUP >>1backup.log
    REM ZARPLATA     ===============================   
REM SET "baseList=ZupTest ZDomines ZGlxInv Zup2 Zup3 ZCentDev ZGlobalStroy ZTerriK ZLokoR ZTKzao ZJilInv"
SET "baseList=ashold ZDomines ZJilInv ZTKzao ZGalaxyRealty ZGlobalStroy ZLokoR ZEvrostroy ZCentDev ZNP"
 FOR %%B in (%baseList%) do (
    echo Backuping %%B >>1backup.log   

    "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /DumpIB D:\1c8\backup\%%B.%curDate%.dt
  REM  "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /IBCheckAndRepair -Rebuild
    echo Backuping %%B done. try to update>>1backup.log
    
   forfiles /P D:\1c8\1c\hrm\ /S /M *.cfu  /C "cmd /c ^0x22C:\Program^ Files\1cv8\8.3.13.1513\bin\1cv8.exe^0x22 config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out^0x22D:\1c8\backup\1backup.log^0x22 -NoTruncate /UpdateCfg @path /UpdateDBCfg" 

echo Updating %%B done.>>1backup.log
  
  )
 
    REM BUH=============================
    
echo BUH >>1backup.log
    
 SET "baseList=Bmaster BAONP BVecta BGlxyR BGlobalStroi BGlxInv1 BEvrostroi BInvProekt CentrDev BAshold BCentrDev BNP3"

 FOR %%B in (%baseList%) do (

    echo Backuping %%B >>1backup.log   
    
    "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /DumpIB D:\1c8\backup\%%B.%curDate%.dt
  REM  "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /IBCheckAndRepair -Rebuild
    echo Backuping %%B done. try to update>>1backup.log
    
    forfiles /P D:\1c8\1c\Accounting\ /S /M *.cfu  /C "cmd /c ^0x22C:\Program^ Files\1cv8\8.3.13.1513\bin\1cv8.exe^0x22 config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out^0x22D:\1c8\backup\1backup.log^0x22 -NoTruncate /UpdateCfg @path /UpdateDBCfg" 

echo Updating %%B done.>>1backup.log
  
  )
  
      REM LOCAL ZIK=============================
    
echo LOCAL ZIK>>1backup.log
    
SET "baseList=ZGalaxyInv ZSpecServ ZTK"

 FOR %%B in (%baseList%) do (

    echo Backuping %%B >>1backup.log   

    "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /F\\192.168.86.204\base8\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /DumpIB D:\1c8\backup\%%B.%curDate%.dt
 REM   "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /F\\192.168.86.204\base8\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /IBCheckAndRepair -Rebuild
    echo Backuping %%B done. try to update>>1backup.log

    forfiles /P D:\1c8\1c\hrm\ /S /M *.cfu  /C "cmd /c ^0x22C:\Program^ Files\1cv8\8.3.13.1513\bin\1cv8.exe^0x22 config /F\\192.168.86.204\base8\%%B /N admin /P s1vr90x /WA- /Out^0x22D:\1c8\backup\1backup.log^0x22 -NoTruncate /UpdateCfg @path /UpdateDBCfg"   

echo Updating %%B done.>>1backup.log
  
)

echo ZUP 8.3 >>1backup.log
    REM ZARPLATA 8.3    ===============================   

SET "baseList=BAss3 ZGlxyRealty3 ZGlobalStroy3 ZNP3 ZLokoR3 ZEvrostroy3 ZTK3 ZGalaxyInv3 ZSpecServ3 ZCentrDev3"
 FOR %%B in (%baseList%) do (
    echo Backuping %%B >>1backup.log   

    "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /DumpIB D:\1c8\backup\%%B.%curDate%.dt
  REM  "C:\Program Files\1cv8\8.3.13.1513\bin\1cv8.exe" config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out"D:\1c8\backup\1backup.log" -NoTruncate /IBCheckAndRepair -Rebuild
    echo Backuping %%B done. try to update>>1backup.log
    
    forfiles /P D:\1c8\1c\hrm\ /S /M *.cfu  /C "cmd /c ^0x22C:\Program^ Files\1cv8\8.3.13.1513\bin\1cv8.exe^0x22 config /S 192.168.86.113\%%B /N admin /P s1vr90x /WA- /Out^0x22D:\1c8\backup\1backup.log^0x22 -NoTruncate /UpdateCfg @path /UpdateDBCfg" 

echo Updating %%B done.>>1backup.log
  
  )
  
 forfiles /P .\ /M *.dt /D -20 /C "cmd /c del /F /Q @path"  
 echo more info in backup.log 
 shutdown -r -t 1

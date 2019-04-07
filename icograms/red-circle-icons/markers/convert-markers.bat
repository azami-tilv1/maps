@echo off
for %%f in (%~dp0*) do (
    echo %%~f
    "C:\Program Files\Inkscape\inkscape.exe" ^
      -z ^
      --export-background-opacity=0 ^
      --export-width=150 ^
      --export-height=150 ^
      --export-area-drawing ^
      --export-png="%%~dpnf.png" ^
      --file="%%~f"
)
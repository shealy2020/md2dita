@echo off  
REM cd to markdown source
cd %MD_HOME%\tbird\md
REM Converts MD to HTML
for %%x in (*.md) do multimarkdown -f -b %%x
REM cd to h2d plugin
cd %MD_HOME%\build\h2d
REM Converts HTML to DITA
call ant -Dargs.input=%MD_HOME%\tbird\md -Dargs.output=%MD_HOME%\tbird\md
cd %MD_HOME%\tbird\md
REM Delete intrim HTML files
del *.html
REM Return to build dir
cd %MD_HOME%\build
echo "Done!"


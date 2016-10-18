REM cd to markdown source
cd D:\working\git\md2dita\tbird\md
REM Converts MD to HTML
for %%x in (*.md) do multimarkdown -f -b %%x
REM cd to h2d plugin
cd D:\working\git\md2dita\build\h2d
REM Converts HTML to DITA
call ant -Dargs.input=D:\working\git\md2dita\tbird\md -Dargs.output=D:\working\git\md2dita\tbird\md
cd D:\working\git\md2dita\tbird\md
REM Delete intrim HTML files
del *.html
REM Return to build dir
cd D:\working\git\md2dita\build
echo "Done!"


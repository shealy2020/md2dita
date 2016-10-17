for %%x in (*.md) do multimarkdown -f -b %%x
cd D:\working\dita-env\dita-ot-2.3.2\plugins\org.dita.specialization.h2d
REM "Call" allows the script to continue to the cd command
call ant -Dargs.input=D:\working\mark -Dargs.output=D:\working\mark
cd D:\working\mark
del *.html
echo "Done!"


cmd /c d: & cd deploy & echo start copy & xcopy /y /d \\172.31.23.15\D$\FTP\Source\*.zip d:\deploy\ & echo done copy
echo duh
start cmd /c echo damit
unzip -o -u d:\deploy\LaughStub.com.zip -d D:\Sites\LaughStub.com
unzip -o -u d:\deploy\Ticketmob.zip -d D:\Sites\Ticketmob
unzip -o -u d:\deploy\TemplateSites.zip -d D:\Sites\TemplateSites
unzip -o -u d:\deploy\embed.zip -d D:\Sites\embed
unzip -o -u d:\deploy\BrandPropertySites.zip -d D:\Sites\BrandPropertySites
unzip -o -u d:\deploy\core.zip -d D:\Sites\core
unzip -o -u d:\deploy\ticketmob_admin.zip -d D:\Sites\ticketmob_admin
unzip -o -u d:\deploy\GlobalBoxOffice.zip -d D:\Sites\GlobalBoxOffice
unzip -o -u d:\deploy\Integrations.zip -d D:\Sites\Integrations
unzip -o -u d:\deploy\SelfServe.zip -d D:\Sites\SelfServe
echo even
echo shit

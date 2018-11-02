cmd /c d: & cd deploy & echo start copy & xcopy /y /d \\172.31.23.15\D$\FTP\Source\*.zip d:\deploy\ & echo done copy
echo duh
start cmd /c echo damit
start unzip -o -u d:\deploy\LaughStub.com.zip -d D:\Sites\LaughStub.com
start unzip -o -u d:\deploy\Ticketmob.zip -d D:\Sites\Ticketmob
start unzip -o -u d:\deploy\TemplateSites.zip -d D:\Sites\TemplateSites
start unzip -o -u d:\deploy\embed.zip -d D:\Sites\embed
start unzip -o -u d:\deploy\BrandPropertySites.zip -d D:\Sites\BrandPropertySites
start unzip -o -u d:\deploy\core.zip -d D:\Sites\core
start unzip -o -u d:\deploy\ticketmob_admin.zip -d D:\Sites\ticketmob_admin
start unzip -o -u d:\deploy\GlobalBoxOffice.zip -d D:\Sites\GlobalBoxOffice
start unzip -o -u d:\deploy\Integrations.zip -d D:\Sites\Integrations
start unzip -o -u d:\deploy\SelfServe.zip -d D:\Sites\SelfServe
echo even faster

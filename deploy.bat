cmd /c d: & cd deploy & echo start copy & xcopy /y /d \\172.31.23.15\D$\FTP\Source\*.zip d:\deploy\ & echo done copy
echo duh
start cmd /c echo damit
REM start 7z -y x d:\deploy/LaughStub.com.zip -oD:\Sites\LaughStub.com
unzip -o -u d:\deploy\LaughStub.com.zip -d D:\Sites\LaughStub.com
REM start 7z -y x d:\deploy/Ticketmob.zip -oD:\Sites\Ticketmob
unzip -o -u d:\deploy\Ticketmob.zip -d D:\Sites\Ticketmob
REM start 7z -y x d:\deploy/TemplateSites.zip -oD:\Sites\TemplateSites
unzip -o -u d:\deploy\TemplateSites.zip -d D:\Sites\TemplateSites
REM start 7z -y x d:\deploy/embed.zip -oD:\Sites\embed
unzip -o -u d:\deploy\embed.zip -d D:\Sites\embed
REM start 7z -y x d:\deploy/BrandPropertySites.zip -oD:\Sites\BrandPropertySites
unzip -o -u d:\deploy\BrandPropertySites.zip -d D:\Sites\BrandPropertySites
REM start 7z -y x d:\deploy/core.zip -oD:\Sites\Core
unzip -o -u d:\deploy\core.zip -d D:\Sites\core
REM start 7z -y x d:\deploy/ticketmob_admin.zip -oD:\Sites\ticketmob_admin
unzip -o -u d:\deploy\ticketmob_admin.zip -d D:\Sites\ticketmob_admin
REM start 7z -y x d:\deploy/GlobalBoxOffice.zip -oD:\Sites\GlobalBoxOffice
unzip -o -u d:\deploy\GlobalBoxOffice.zip -d D:\Sites\GlobalBoxOffice
REM start 7z -y x d:\deploy/Integrations.zip -oD:\Sites\Integrations
unzip -o -u d:\deploy\Integrations.zip -d D:\Sites\Integrations
REM start 7z -y x d:\deploy/SelfServe.zip -oD:\Sites\SelfServe
unzip -o -u d:\deploy\SelfServe.zip -d D:\Sites\SelfServe
echo even fasterest

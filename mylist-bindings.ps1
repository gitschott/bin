Set-ExecutionPolicy Bypass -scope Process -Force
Import-Module WebAdministration
Write-Host "";
$hostname = hostname
$Websites = Get-WebSite
$date = (Get-Date).ToString('MMddyyyy')
foreach ($Site in $Websites) {
    $Binding = $Site.bindings
    [string]$BindingInfo = $Binding.Collection
    [string[]]$Bindings = $BindingInfo.Split(" ")#[0]
    $i = 0
    $status = $site.state
    $path = $site.PhysicalPath
    $fullName = $site.name
    $state = ($site.name -split "-")[0]
    $Collection = ($site.name -split "-")[1]
    $status = $site.State
    $anon = get-WebConfigurationProperty -Filter /system.webServer/security/authentication/AnonymousAuthentication -Name Enabled -PSPath IIS:\sites -Location $site.name | select-object Value
    $basic = get-WebConfigurationProperty -Filter /system.webServer/security/authentication/BasicAuthentication -Name Enabled -PSPath IIS:\ -location $site.name | select-object Value
    Do{
        if( $Bindings[($i)] -notlike "sslFlags=*"){
            [string[]]$Bindings2 = $Bindings[($i+1)].Split(":")
            $obj = New-Object PSObject
            # $obj | Add-Member Date $Date
            # $obj | Add-Member Host $hostname
            # $obj | Add-Member State $state
            # $obj | Add-Member Collection $Collection
            $obj | Add-Member SiteName $Site.name
            # $obj | Add-Member SiteID $site.id
            $obj | Add-member Path $site.physicalPath
            # $obj | Add-Member Protocol $Bindings[($i)]
            $obj | Add-Member Port $Bindings2[1]
            # $obj | Add-Member Header $Bindings2[2]
            # $obj | Add-member AuthAnon $Anon.value
            # $obj | Add-member AuthBasic $basic.value
            # $obj | Add-member Status $status
            $obj #take this out if you want to save to csv| export-csv "c:\temp\$date-$hostname.csv" -Append -notypeinformation
            $i=$i+2
        }
        else{$i=$i+1}
    } while ($i -lt ($bindings.count))
}

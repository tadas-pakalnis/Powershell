cd "C:\Users\C27774\Desktop\Global weekly"
$a = New-Object System.Globalization.CultureInfo("en-GB")
$b = Get-Date
$c = get-date (Get-Date).AddDays(-7)
$currFriday = $b.ToString("d MMMM yyyy", $a)
$lastFriday = $c.ToString("d MMMM yyyy", $a)
Dir | Rename-Item -NewName {$_.name -replace "20 February 2015", $lastFriday}

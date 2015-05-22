#
# Script.ps1
#
$hour = 01
For($year = 14; $year -le 16; $year++) {

	For($month =01; $month  -le 12; $month++){

		For ($day = 01; $day –le 28; $day++) {
			$hour++;
			if($hour -gt 23){
				$hour = 1
			}
			$date = (Get-Date -Month $month -Day $day -Year $year -Hour $hour).tostring("yyMMddHH");
			out-file -FilePath C:\logdata\logs\globeshare.novonordisk.com\webdkba1085\ex$date.log
		} 
	}
}


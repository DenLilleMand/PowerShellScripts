#
# Script.ps1
#
function New-EmptyFile
{
   param( [string]$FilePath,[double]$Size )
 
   $file = [System.IO.File]::Create($FilePath)
   $file.SetLength($Size)
   $file.Close()
   Get-Item $file.Name
}



$hour = 01
For($year = 14; $year -lt 17; $year++) {

	For($month =01; $month  -lt 13; $month++){

		For ($day = 01; $day –lt 28; $day++) {
			$hour++;
			if($hour -gt 23){
				$hour = 1
			}
			$date = (Get-Date -Month $month -Day $day -Year $year -Hour $hour).tostring("yyMMddHH");
			New-EmptyFile -FilePath C:\Users\herpderp\Documents\wintra\filepaths\ex$date.log -Size 10mb
		} 
	}
}


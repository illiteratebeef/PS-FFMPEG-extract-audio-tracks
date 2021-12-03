 $files = get-childitem C:\scratch\testing -Filter *.mkv
## $files

$ext1 = "_5.1.ac3"
$ext2 = "_Stereo.ac3"
$ext3 = "_Commentary.ac3"

foreach ($file in $files)
{
$path = Join-Path C:\scratch\testing $file
$fext1 =  $path + $ext1
$fext2 =  $path + $ext2
$fext3 =  $path + $ext3

#$path
#$fext1
#$fext2
#$fext3
#
#}


C:\scratch\testing\ffmpeg.exe -i $path -map 0:1 -vn -acodec copy $fext1

C:\scratch\testing\ffmpeg.exe -i $path -map 0:2 -vn -acodec copy $fext2

C:\scratch\testing\ffmpeg.exe -i $path -map 0:3 -vn -acodec copy $fext3

}

# Harvard_DRS_downloader
A downloader to get our images from the DRS using CSV

To be run directly on our NAS drive

## usage: 

`./ss_down.sh filename.csv &`

the ampersand "&" at the end is to run in the background

existing columns should be: fileURL,newFileName

Will output a file named `results.csv` that will show download status

run `ps -eaf | grep [w]get` to see the process ID that is running in the background

to kill the process run `kill x` where x=PID

IMPORTANT: RUN `dos2unix filename.csv` to remove windows chars that are appended at the end of files

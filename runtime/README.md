These are examples on how I do certain things. These are not best or good practices. I am always happy to learn how the "thing" can be done differently or how my lines can be improved.
# One Line
## How do I count my plot files
```
# Find files of a certain minimum size recursively. I find that K32 are never smaller than 108700000000 bytes.
find /chia/buffer/ -type f -size +108700000000c |wc -l
4374
```
## How do I find the NFS mount that does not respond
Assume you have a directory that is used to mount several NSF exports and one of them is not responding. The symptom might be that you are looking to count your plot files but the command hangs.
```
# Loop over all directories and probe if directory is used for an NFS mount.
# Before the probe, let's print the mount first. Once the script hangs, we know which mount has an issue.
for nfs in /chia/buffer/*; do echo "...info: $nfs"; stat -fc %T "$nfs"; done
```
We can advance this line a tiny bit and introduce `timeout` to kill the hanging stat command
```
for nfs in /chia/buffer/*; do echo "...info: $nfs"; timeout -k 3s -s SIGKILL 5s stat -fc %T "$nfs"; done

# this will output something like below. We now know that the info line followed by Killed, points to the hanging mount.
...info: /chia/buffer/pod-5
nfs
...info: /chia/buffer/pod-6
Killed
...info: /chia/buffer/pod-7
nfs
```
## How I copy any but exactly 36 plot files from disk01 to disk02?
The example requires rclone >=1.5.3 to be installed. And if you look at the command it does even more than the title suggest
* `-P show` the progress
* `--transfers 1` only transfer one file concurrently, this good when disks are spindles, when disks are raid volumes of flash drives, you can increase that value for more IO saturation. But single spindles do noy like concurrent IO too much.
* `--include plot-k32*.plot` a name filter, in this case any k32 plot file
* `--min-size 101G` a min size filter, some safety to not include partial files. But it is not perfect. A K32 can be a little larger than 101G and still be partial.
* `--min-age 2d` a min time filter, files should be older than 2 days
* `--max-transfer=3600G` a total volume transfer limit, do not transfer more then 3600G, but see next line, how this behavior can be tuned
* `--cutoff-mode=soft` this tunes the `--max-transfer` argument. After 3600G total volume was transferred, continue and finish the transfer of the file that exceeded the limit
The combination of above has the effect of transferring 36 k32 plot files, that are older than 2 days. Since this will take a while, you should execute next as a background job or in a `screen`.
```
rclone move /chia/plots/disk08 /chia/plots/disk02 -P --transfers 1 --include plot-k32*.plot --min-size 101G --min-age 2d --max-transfer=3600G --cutoff-mode=soft
```
# Scripts
## Keep the spindles spinning [wake-up-hdd.sh](https://github.com/xorinox/chia-utils/blob/main/runtime/wake-up-hdd.sh)
It is my belief that the spindles will live longer if they spinn 24/7 instead of spinning down and up all the time. The Chia farming workload and thanks to the 512 filter access drives only so often. We also do not want the farming response delayed due to spinning up a drive first that contains the eligible plot.
The basic idea is to read a few random blocks from one randomly selected plot file from each mounted drive. And then we do this frequently. This will only read a very small amount of data, does not do many seeks and will not harm the harddrive.

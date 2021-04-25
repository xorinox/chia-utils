# One Line
## How do I count my plot files
```
# Find files of a certain minimum size recursively. I find that K32 are never smaller than 108700000000 bytes.
find /chia/buffer/ -type f -size +108700000000c |wc -l
4374
```
## How do I find the NFS mount, that does not respond
Assume you have a directory that is used to mount several NSF export and one of them is not responding. The symptom might be that you are looking to count your plot files but the command hangs.
```
# Loop over all directories and probe if directory is used for an NFS mount.
# Before the probe, lets print the mount first. Once the script hangs, we know which mount has an issue.
for nfs in /chia/buffer/*; do echo "...info: $nfs"; stat -fc %T "$nfs"; done
```
We can advance this line a tiny bit and introduce `timeout` to kill the hanging stat command
```
for nfs in /chia/buffer/*; do echo "...info: $nfs"; timeout -k 3s -s SIGKILL 5s stat -fc %T "$nfs"; done

# this will outpout something like below. We now know that the info line followed by Killed, points to the hanging mount.
...info: /chia/buffer/pod-5
nfs
...info: /chia/buffer/pod-6
Killed
...info: /chia/buffer/pod-7
nfs
```
# Scripts

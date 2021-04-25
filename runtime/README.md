# One Line
## How do I count my plot files
```
# find files of a certain minimum size recursively. I find that K32 are never smaller than 108700000000 bytes.
find /chia/buffer/ -type f -size +108700000000c |wc -l
4374
```
## How do I find the NFS mount, that does not respond
Assume you have a directory that is used to mount several NSF export and one of them is not responding. The symptom might be that you are looking to count your plot files but the command hangs.
```
# loop over all directories and sub directories (one level down) and probe if the mount is of type NFS, before the probe, I print the mount first. Once the script hangs, we know which mount was probing..
for nfs in /chia/buffer/*/*; do echo "...info: $nfs"; stat -fc %T $nfs; done
```
# Scripts

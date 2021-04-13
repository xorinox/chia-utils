# Chia Utils
Collection of my Chia Blockchain Utils
## Pre-requisites
For re-used without changing paths, scripts assume the following folder structure:

### Plots Disks
Paths for final plots are storage.  
```
/chia
├──plots
   ├──disk01
   ├──disk02
   ├──disk0{n}
```


### Scratch Disks
Paths for temporary plots creation. Could be single drives or striped volumes (RAID-0).  
```
/chia
├──scratch
   ├──disk01
   ├──disk02
   ├──disk0{n}
```

### Scripts
The ./scripts directory is a clone of this repository: https://github.com/xorinox/chia-utils  
```
/chia
├──scripts
   ├──config
   ├──install
   ├──runtime
   ├──bin
```
### Chia Code
Separating the Chia installation for running the nodes, farmers and harvesters and plotting has the advantage of not needing to stop any plotting should a new version of Chia arrive that may address criticial issues for any of the daemon services. For plotting or farming, you might want to try an early beta version, with harming either farming or plotting at the same time.
```
/chia
├──farming
├──plotting
```

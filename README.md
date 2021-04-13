# Chia Utils
Collection of my Chia Blockchain Utils
## Pre-requisites
For re-used without changing paths, scripts assume the following folder structure:

### Plots Disks
This is where all the final plots are stored.  
```
/chia
├──plots
   ├──disk01
   ├──disk02
   ├──disk0{n}
```


### Scratch Disks
This are the temporary drives for plot creation. Could be single drives or raid-0 volumes.  
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

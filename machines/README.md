DRAFT (this is a working document)  
There are different approaches for plotting, with different price tags and other features. There is not one single correct approach. They all have pros and cons. If you choose an architecture with more than one machine involved, sooner or later networking becomes really important. For every build that I put together I cared a lot about minimizing I/O contention. I am using the term machine as a synonym for computer or server.
## Questionaire to inform Architecture
As for Chia plotting and system design, the goal should be to saturate the systems PCIe bandwidth with disk IO (scratch/temp writes). Do I have enough cores to saturate available IO bandwidth? Do I porvide enough disk IO to fully support all available cores?  
* How many terabytes of Chia plot files are my goal?
  * Do I need several computer/server cases?
    * How do I plan to transfer plots in between machines?
* What do I do with the plotting capacity/compute power, when I am finished plotting?
* How many computer parts do I already own and can be reused in any form?
## Temporary Storage (scratch)
* use a lot of SATA/SAS SSD for temp
* use a lot of SATA/SAS 10k or 15k hard drives for temp
* use fewer NVME based flash drives for temp
* use only hard drives for plotting
## Final Storage (plots)
* Hard drives various brands and sizes between 3 and 18 TB, SATA only, internal and shucked external.
# Parts List
Components listed below have been used to create various different plotters and farmers. In the sections below I will refer to them and not always spell out the exact model every time, that saves me time and should make for an easier read.  
## Adapters (HBA, RAID, U.2 to M.2, M.2 to PCIe)
* [Adaptec ASR 71605 16 Port](https://amzn.to/3v9Wztp) SAS/SATA RAID PCIe v3, 8x
* [LSI SAS 9300-8I 8 Port](https://amzn.to/32wBddD) SAS/SATA HBA PCIe v3, 8x
* [Supermicro AOC-SLG3-2M2](https://amzn.to/32DEiZf) PCIe v3, 8x (2x M.2 to PCIe)
* [Gigabyte GC-4XM2G4](https://amzn.to/3xeNLEv) PCIe v4, 16x (4x M.2 to PCIe)
* [SYBA SI-ADA40121](https://amzn.to/3suThzq) PCIe v3, 4x (U.2 SFF-8639 to M.2 M-Key)
## Temporary Storage (Scratch)
I have used mostly used enterprise grade SATA SSD from eBay. The pricing varied from as low as $55 per item to $399. The most expensive drives were the new from Amazon 2 TB Gigabyte Aorus, the cheapest ones used Intel DC S3610 400 GB (eBay and Amazon used).
### SATA 6 Gb/s
* Intel DC S3610 400 GB, 3000 TBW
* Intel DC S3700 400 GB, 7300 TBW
* Intel DC S3710 400/800 GB, 8300/16900 TBW
* Micron 5100 Max 480 GB, 4380 TBW
* [Seagate Nytro 1351](https://amzn.to/3sAC9s3) 960 GB, 3070 TBW
### NVME PCIe v3/4
* [Micron 9200 MAX](https://amzn.to/3emr88H) 1.6 TB, 8800 TBW (U.2, PCIe v3)
* [Gigabyte Aorus](https://amzn.to/3dyLEDD) 1 & 2 TB, 1800/3600 TBW (M.2, PCIe v4)
* [Seagate Seagate FireCuda 520](https://amzn.to/2RMiLeR) 2 TB, 3600 TBW (M.2, PCIe v4)
* [Samsung SSD 980 PRO](https://amzn.to/3xal3Vm) 500 GB, 300 TBW (M.2, PCIe v4)
* [Inland Performance](https://amzn.to/3xkn7uf) 1 TB, 1800 TBW (M.2, PCIe v4)
* [Inland Premium](https://amzn.to/3v3Ft0s) 1 TB, 1800 TBW (M.2, PCIe v3)
## Enclosures
* [Athena Power BP-15827SAC](https://www.newegg.com/athena-power-bp-15287sac-other/p/N82E16816119044), 1x 5.25" External Drive Bay to 8x 2.5" SSD
## CPUs
### AMD
* [6 core 3600](https://amzn.to/32z3tw4) 65 W
* [6 core 3600xt](https://amzn.to/2RPuucK) 95 W
* [8 core 3700x](https://amzn.to/3aoL4GU) 65 W
* [8 core 3800x](https://amzn.to/3xaoCec) 105 W
* [8 core 5800x](https://amzn.to/3v3MgHq) 105 W
* [16 core 2950x](https://amzn.to/3n39v1q) 180 W
* [24 core 3960x](https://amzn.to/3v5JSQn) 280 W
### Intel
* 4 core 4770k (pretty old, but you can find used ones on eBay)
* [10 core 10900x](https://amzn.to/32xt74E) 125 W
## RAM
I exclusively use DDR4 from G.Skill and Corsair.
### G.Skill
* 16 GB 3200 MHz CL16 modules [Trident Z Royal Silver 2 x 16 GB](https://amzn.to/3dDiJyC)
* 16 GB 3600 MHz CL16 modules [Trident Z NEO Series 2 x 16 GB](https://amzn.to/3at2SQX)
* 32 GB 3200 MHz CL16 modules [Trident Z NEO Series 2 x 32 GB](https://amzn.to/3tEB4Rf)
### Corsair
* 16 GB 3000 MHz CL15 modules ([DOMINATOR Platinum Series](https://amzn.to/2QLErXS))
* 8 GB 1600 MHz CL9 modules (pretty old, but you can find used ones on eBay)
## Motherboards
* [ASRock X570 Taichi](https://amzn.to/3dBQmAG)
* [ASRock B550 Taichi](https://amzn.to/3aJhw75) 
* [ASRock X399 Taichi](https://amzn.to/3tCxs2i)
* [Asus TUF Gaming X570-PLUS (WI-FI)](https://amzn.to/3xcebqv)      
* [Asus ROG Crosshair VIII Hero](https://amzn.to/3gpMHYw)                        
* [Asus ROG Maximus XII Formula](https://amzn.to/3glpqqK)                             
* Asus Z87-Deluxe/Quad (pretty old, but you can find used ones on eBay)                                     
* [Gigabyte TRX40 Aorus Master](https://amzn.to/3v9S4z1) 
* [Gigabyte X570 Aorus Pro WIFI](https://amzn.to/3gsqvNs)                                                                        
* [MSI MPG X570 Gaming Edge WIFI](https://amzn.to/2QaFhOj)     
## Desktop Case Plotters
I have tried a many different cases, but my favorite turn out to be the [Thermaltake Core V71 Tempered Glass Edition E-ATX](https://amzn.to/3gqekkd), that features huge but silent fans and room for 16x 7mm SATA SSDs via 2x Athena enclosures in the 5.25" slots. The case can house 8x 3.5 internal HDD and is roomy enough for many liquid cooling options. For all but the Threadripper CPUs I am using the liquid cooling [Corsair H115i 280mm](https://amzn.to/3auszk6) but others work too. This cooler provided enough cooling for the 5800x to run stable at 4.7 GHz all cores. For the Threadripper CPUs I am using the [NZXT Kraken X73 360mm](https://amzn.to/3gyiTc6) liquid cooler. Not overclocking these, works perfectly fine, even without covering the entire CPU.
### 3700x based, 8 cores (no overclocking)
* In the Thermaltake case with liquid cooling
* MSI MGP motherboard
* 64 GB 3200 MHz RAM (G.Skill), CL16 (XMP enabled)
* 512 GB NVME flash disk (OS, Fedora Server 33)
* 16x port SATA host bus adapter
* 8x 14 TB hard drives for plots storage
```
# Each drive configured individually, assumes 8 hard drives that are devices sdk through sdr
i=1; 
for d in sd{k..r}; do
  id=$(printf "%02d" $i);
  mkfs.ext4 /dev/$d -T largefile4 -m 0 -L "disk${id}" -F &
  mkdir -p "/chia/plots/disk${id}"
  echo "LABEL=disk${id} /chia/plots/disk${id} ext4 defaults,nofail 0 0"
  i=$((i+1))
done
wait

# Above line will produce next few lines that can be added manually to /etc/fstab.
# I prefer to not change system etc files automatically, but could be done too.
LABEL=disk01 /chia/plots/disk01 ext4 defaults,nofail 0 0
LABEL=disk02 /chia/plots/disk02 ext4 defaults,nofail 0 0
LABEL=disk03 /chia/plots/disk03 ext4 defaults,nofail 0 0
LABEL=disk04 /chia/plots/disk04 ext4 defaults,nofail 0 0
LABEL=disk05 /chia/plots/disk05 ext4 defaults,nofail 0 0
LABEL=disk06 /chia/plots/disk06 ext4 defaults,nofail 0 0
LABEL=disk07 /chia/plots/disk07 ext4 defaults,nofail 0 0
LABEL=disk08 /chia/plots/disk08 ext4 defaults,nofail 0 0
```
* 10x 400 GB Intel DC S3710 flash drives for scratch storage
```
# Configured as RAID-0 using LVM and formatted with XFS
vgcreate sata_scratch01 /dev/sda /dev/sdb /dev/sdc /dev/sdd /dev/sde /dev/sdf /dev/sdg /dev/sdh /dev/sdi /dev/sdj
lvcreate --type raid0 --stripes 10 --stripesize 1024 -l 100%free -n plots sata_scratch01
mkfs.xfs /dev/sata_scratch01/plots -L scratch01
mkdir -p /chia/scratch/disk01

# next line can be added to /etc/fstab
LABEL=scratch01 /chia/scratch/disk01 xfs defaults,nofail 0 0
```
* Plotting assumes the chia software to be installed and configured into /chia/plotting. This will start 8 concurrent processes that make each local hard drive full.
```
mkdir -p /chia/plots/logs
screen -d -m -S sata1_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 0m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk01 -d /chia/plots/disk01 |& tee /chia/plots/logs/sata1_1.0.5_128.log'
screen -d -m -S sata2_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 5m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk02 -d /chia/plots/disk02 |& tee /chia/plots/logs/sata2_1.0.5_128.log'
screen -d -m -S sata3_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 60m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk03 -d /chia/plots/disk03 |& tee /chia/plots/logs/sata3_1.0.5_128.log'
screen -d -m -S sata4_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 65m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk04 -d /chia/plots/disk04 |& tee /chia/plots/logs/sata4_1.0.5_128.log'
screen -d -m -S sata5_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 120m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk05 -d /chia/plots/disk05 |& tee /chia/plots/logs/sata5_1.0.5_128.log'
screen -d -m -S sata6_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 125m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk06 -d /chia/plots/disk06 |& tee /chia/plots/logs/sata6_1.0.5_128.log'
screen -d -m -S sata7_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 180m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk07 -d /chia/plots/disk07 |& tee /chia/plots/logs/sata7_1.0.5_128.log'
screen -d -m -S sata8_1.0.5_128 bash -c 'cd /chia/plotting && . ./activate && sleep 185m && chia plots create -k 32 -b 3700 -r 8 -u 128 -s 65536 -n 128 -f -your-key -p -your-key -t /chia/plots/disk01 -2 /chia/plots/disk08 -d /chia/plots/disk08 |& tee /chia/plots/logs/sata8_1.0.5_128.log'
```
* Approximate plotting speed (v1.0.4), **3.18 TiB/day**
```
procs=8; grep -a -i "total time" /chia/plots/logs/sata*.log |awk -v p=$procs '{sum=sum+$4} {avg=sum/NR} {tday=86400/avg*p*101.366/1024} END {printf "%d K32 plots, avg %0.1f seconds, %0.2f TiB/day \n", NR, avg, tday}'
80 K32 plots, avg 21518.9 seconds, 3.18 TiB/day
```
### 3960x based 24 cores (no overclocking)
* The TRX40 Aorus Master motherboard
* 128 GB 3000 MHz RAM (Corsair), CL15 (XMP enabled)
* 512 GB NVME flash disk (OS, Fedora Server 33)
* Two 16x port SATA host bus adapters
* 12x 14 TB hard drives for plots storage
* 24x 400 GB Intel DC S3710 flash drives for scratch storage (three Athena enclosures)
```
# configured as two RAID-0 volumes of each 12 SSDs, folling same example as above
```
* 6x 1TB NVME SSD (2 onboard, 4 in the Gigabyte adapter)
```
# configured as three RAID-0 volumes of each 2 NVMEs, folling same example as above
```
* Plotting on this system, is different to the 3700x example as I use for -2 the one of the three NVME based volumes. The easies the IO load on the SSD based volume for the last two phases.
* Approximate plotting speed (v1.0.4), **8.87 TiB/day**
```
procs=24; grep -a -i "total time" /chia/plots/logs/sata*.log |awk -v p=$procs '{sum=sum+$4} {avg=sum/NR} {tday=86400/avg*p*101.366/1024} END {prin
tf "%d K32 plots, avg %0.1f seconds, %0.2f TiB/day \n", NR, avg, tday}'
161 K32 plots, avg 23137.0 seconds, 8.87 TiB/day
```
## Server Case Farmers (that can plot too)
My goto server case turned out to be the [Rosewill RSV-L4500](https://amzn.to/3tDs3b4) that has room for even E-ATX motherboards, 15x internel 3.5 HDD and with some DIY skills and crativity you can also mount liquid cooling inside, I have two farmers that cool the CPU using the already mentioned [Corsair H115i 280mm](https://amzn.to/3auszk6).
## DIY Farmers

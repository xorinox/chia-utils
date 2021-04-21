DRAFT  
There are different approaches for plotting, with different price tags and other features. There is not one single correct approach. They all have pros and cons. If you choose an architecture with more than one machine involved, sooner or later networking becomes really important. For every build that I put together I cared a lot about minimizing I/O contention. I am using the term machine as a synonym for computer or server.
## Questionaire to inform Architecture
* How many terabytes of Chia plot files are my goal?
  * Does it fit into one case?
  * Do I need several cases?
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
Components listed below have been used to create various different plotters and farmers.  
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
I use exclusively DDR4 from G.Skill and Corsair.
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
* [MPG X570 Gaming Edge WIFI](https://amzn.to/2QaFhOj)     
## Desktop Case Plotters
I have tried a many different cases, but my favorite turn out to be the [Thermaltake Core V71 Tempered Glass Edition E-ATX](https://amzn.to/3gqekkd), that features huge but silent fans and room for 16x 7mm SATA SSDs via 2x Athena enclosures in the 5.25" slots. The case can house 8x 3.5 internal HDD and is roomy enough for many liquid cooling options. For all but the Threadripper CPUs I am using the liquid cooling [Corsair H115i 280mm](https://amzn.to/3auszk6) but others work too. This cooler provided enough cooling for the 5800x to run stable at 4.7 GHz all cores. For the Threadripper CPUs I am using the [NZXT Kraken X73 360mm](https://amzn.to/3gyiTc6) liquid cooler. Not overclocking these, works perfectly fine, even without covering the entire CPU.
### 3700x based
* 64 GB 3200 MHz RAM
* 8x 14 TB hard drives for plots storage
* 10x 400 GB 3710 flash drives for scratch storage
```
# configured as RAID-0 using LVM and formatted with XFS
```
### AMD 3700x based

## Server Case Farmers (that can plot too)
My goto server case turned out to be the [Rosewill RSV-L4500](https://amzn.to/3tDs3b4) that has room for even E-ATX motherboards, 15x internel 3.5 HDD and with some DIY skills and crativity you can also mount liquid cooling inside, I have two farmers that cool the CPU using the already mentioned [Corsair H115i 280mm](https://amzn.to/3auszk6).
## DIY Farmers


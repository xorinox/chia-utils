DRAFT

# Architecture
There are different approaches for plotting, with different price tags and other features. There is not one single correct approach. They all have pros and cons. If you choose an architecture with more than one machine (server) involved, sooner or later networking becomes important. For every build that I put together I cared a lot about minimizing I/O contention.
## Questionaire to inform Architecture

## Temporary Storage (scratch)
* use a lot of SATA/SAS SSD for temp
* use a lot of SATA/SAS 10k or 15k hard drives for temp
* use fewer NVME based flash drives for temp
* use only hard drives for plotting
## Final Storage (plots)
# Parts List
Components listed below have been used to create various different plotters and farmers.  
## Adapters (HBA, RAID, U.2 to M.2, M.2 to PCIe)
* [Adaptec ASR 71605 16 Port](https://amzn.to/3v9Wztp) SAS/SATA RAID PCIe v3, 8x
* [LSI SAS 9300-8I 8 Port](https://amzn.to/32wBddD) SAS/SATA HBA PCIe v3, 8x
* [Supermicro AOC-SLG3-2M2](https://amzn.to/32DEiZf) PCIe v3, 8x (2x M.2 to PCIe)
* Gigabyte GC-4XM2G4 PCIe v4, 16x (4x M.2 to PCIe)
* SYBA SI-ADA40121 PCIe v3, 4x (U.2 SFF-8639 to M.2 M-Key)
## Temporary Storage (Scratch)
I have used mostly used enterprise grade SATA SSD from eBay. The pricing varied from as low as $55 per item to $399. The most expensive drives were the new 2 TB Gigabyte Aorus, the cheapest ones used Intel DC S3610 400 GB.
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
* AMD 3600, 3600xt, 3700x, 3800x, 5800x, 2950x, 3960x
* Intel 4770k, 10900x
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
## Server Case Farmers
## DIY Farmers


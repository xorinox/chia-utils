# Architecture
There are different approaches for plotting, with different price tags and other properties. There is not one single correct approach. They all have pros and cons. If you choose an architecture with more than one machine (server) involved, sooner or later networking becomes important. For every build I put together I cared a lot preventing I/O contention.
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
* Adaptec ASR 71605 16 Port SAS/SATA RAID PCIe v3, 8x
* LSI SAS 9300-8I 8 SAS/SATA HBA PCIe v3, 8x
* Supermicro AOC-SLG3-2M2 PCIe v3, 8x (2x M.2 to PCIe)
* Gigabyte GC-4XM2G4 PCIe v4, 16x (4x M.2 to PCIe)
* SYBA SI-ADA40121 PCIe v3, 4x (U.2 SFF-8639 to M.2 M-Key)
## Temporary Storage (Scratch)
### SATA 6 Gb/s
* Intel DC S3610 400 GB, 3000 TBW
* Intel DC S3700 400 GB, 7300 TBW
* Intel DC S3710 400/800 GB, 8300/16900 TBW
* Micron 5100 Max 480 GB, 4380 TBW
* Seagate Nytro 1351 960 GB, 3070 TBW
### NVME PCIe v3/4
* Micron 9200 MAX 1.6 TB, 8800 TBW (U.2, PCIe v3)
* Gigabyte Aorus 1 & 2 TB, 1800/3600 TBW (M.2, PCIe v4)
* Seagate Seagate FireCuda 520 2 TB, 3600 TBW (M.2, PCIe v4)
* Samsung SSD 980 PRO 500 GB, 300 TBW (M.2, PCIe v4)
* Inland Performance 1 TB, 1800 TBW (M.2, PCIe v4)
* Inland Premium 1 TB, 1800 TBW (M.2, PCIe v3)
## Enclosures
* Athena Power BP-15827SAC, 1x 5.25" External Drive Bay to 8x 2.5" SSD
## CPUs
* AMD 3600, 3600xt, 3700x, 3800x, 5800x, 2950x, 3960x
* Intel 4770k, 10900x
## Motherboards
## Desktop Case Plotters
## Server Case Farmers
## DIY Farmers


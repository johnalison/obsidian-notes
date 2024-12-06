https://fbcr.fnal.gov/BCR/All

# BCR Draft

### What is the change about? Include any details about the change

This change has two pieces which affect module production at the 3 US sites (CMU, TTU, and UCSB). 

The first is a change of the cost of consumables used during module production stemming from the change in adhesive used for module assembly and including an annual calibration of the OGP microscope used in the QA/QC process.

The OGP calibration will increase the cost by $2k.

The per module consumables cost will:
- increase by $8.75 (cost of the transfer tape) 
- decrease by $0.7 (we now need will need less of the Araldite epoxy)

The combined effect is an increase in the total cleanroom consumables cost of $34k at each site.  

The second change is for equipment needed to supply dry air and high-voltage for the multi-module test stand. This increases the cost of the setup needed per MAC by:
- $15k for high-voltage power supplies
- $5k for the dry-air regenerative air dryer





### Impact / Justification

Module construction was originally foreseen to only use epoxy for adhesive. Because the PCB can arrive too warped to laminate with epoxy alone, we would like to move to a "hybrid" adhesive strategy, using a combination of epoxy and transfer tape.  The hybrid adhesive strategy also reduces the latency of producing a module; with epoxy-only construction requires two overnight curing steps, with the hybrid scheme a module can be assembled in a single day. Reducing assembly latency by two days significantly mitigates the risk from problems during the first assembly stages. This change will thus lead to improved module quality, decreased time to produce a module, and reduced potential risk. 


Annual calibration of the OGP SmartScope microscopes is required to maintain their precision and reliability. It is critical that the QA/QC measurements remain accurate and consistent over time.

Equipment is needed to supply the dry air  and high-voltage power for the multi-module test stands.  These test stands are a critical part of the QA/QC at each site. The specification for the dry air is more stringent than what is currently used during assembly in for storage. The specs could potentially be met with a manual desiccant air dryer inline between the compressor air dryer and the teststand. These are inexpensive ($500), but would require frequent regeneration of the desiccant which would be tedious and costly in terms of person-time.  Regenerative air dryers ($4000) have fully automatic operation and require relatively little maintenance.




# Notes


- Update all cleanroom consumable numbers ?
- Araldite:   464 -> 202  $20 -> $25
	- Current: 251 days * 24 modules / day * (13 modules / cartrige )^-1 = 464 x $20 = $9,280.00. (Was 20/13... now 25/30
	- New: 251 days * 24 modules / day * (30 modules / cartrige )^-1 = 201 cartridges x  $25 / cartrige = $4,020.00

https://www.perigeedirect.com/products/huntsman-araldite-2011-slow-setting-all-purpose-epoxy?variant=42330316177662

* Transfer Tape: 251 * 24 m/d * 1 tape/module = 6024 * $8.75 = **$52710.0**
- OR: 251 * 12m/d = 3012 * $8.75 = **$26355.0**



Added OGP calibration

- -5k  + 26k + 1500 * 1.5 
45,344 + 2

Change:
- Was **13920.0** - **6030.0** 
- Should be (-7890 + 39532.5 + 3000)

$48288 -> $72,288 
$45344 -> 69344
$48396 + 24


# Assembly Estimates
Was: 34k / year  x 1./12 months x (1 month / 231 modules) = $12.27 / module
Now  56k /year  x  1/12 x 1/231 = $20.20 / module

# Questions:
- BOE assumes 24 modules glued /day x 251 days = 6024 ?
	- if 12/day = 3012 (/year) 
- How the uncertainty assessed ?
A: https://cms-docdb.cern.ch/cgi-bin/DocDB/RetrieveFile?docid=12919&filename=HL_LHC-CMS-Detector-Upgrade-Key-Assumptions-v9-4.pdf&version=57

# BCR Draft 
- Cost update for transfer tape assembly  for ODMB5/7 boards



- How expensive is the Alerdite ? How much do we save now that we do transfer tape  ... mail to Jessica
- How much is the transfer tape ?  ... mail to Jessica
- Notes: 
	- $30/cartridge 
	- With full epoxy can do ~10 modules / cartridge  ~ $3 / module
    - Hybrid can do ~30 modules / catrige ~ $1 / module
    - Susanna:  (SRP) quote 9000 pieces, enough for 4500 modules each at TTU and CMU. The cost per item does come down to $8.75 with such a large quantity.
- [x] Ping Jeremy re: Baseline Change Request
	- Need spread sheet form Manfred...pinged him


Spread sheet from Jessica (Not the official one!)
https://docs.google.com/spreadsheets/d/1PWj6JIvCmMzZLiagedCTp9tm09GdRMhWJG3yRQuG7rs/edit?gid=156788291#gid=156788291

Official one available here:
https://cms-docdb.cern.ch/cgi-bin/DocDB/ShowDocument?docid=13032

$33,875.13 / 4240 ~$8/module 

[[HGC MAC BoEs]]

[[Dry Air for MMTS]]

# Follow-ups
[[Module assembly at CMU]]

[[HGC MAC P2UG Silicon Modules 5 Nov 2024]]
# Links: 



202410310856

# CHANGELOG

- [CHANGELOG](#changelog)
  - [The dark ages (Pre 3.2.0)](#the-dark-ages-pre-320)
  - [3.2.0](#320)
  - [3.3.0](#330)
  - [3.3.1](#331)
  - [3.4.0](#340)
  - [4.0.0rc (proposed)](#400rc-proposed)

---

## The dark ages (Pre 3.2.0)

- See the F2018 EE464 MPPT Final Report for list of errata and fixes.
- 0.22 uF (C21) and 10 uF (C22) capacitors in the CAN circuit schematic were
  swapped. Fixed in **v3.2.0**.

---

## 3.2.0

**Schematic**

- Reannotated all component labels and reverted rescued schematic symbols.
- Rearranged schematic and cleaned up component positioning.
- Created Array.lib for array-relevant schematic symbols.
- Swapped out zener diodes going into the uC from 3.6V to 3.9V.
- Updated the LEDs and resistors for Xx_live indicators.
- Added Error indicator LED.
- Shifted pins for voltage/current sensors to accommodate STLink UART2.
- Added fuse on the array side.
- Added unity gain filter to voltage sensors.
- Errata: swapped 0.22uF and 10uF capacitors on CAN circuit to correct positions.

**Layout**

- Created MPPT-PrimaryPCB.pretty for custom footprints.
- Specified that board should be 2oz copper/ft.
- Re-specified snubber circuit footprints.
- Comprehensive redesign of layout.

---

## 3.3.0

**Schematic**

- BoM consolidation to JLCPCB.
- BoM merged into schematic component fields.
- Removed RC filters from voltage sensors.
- Replaced MAX chip with LM358.
- Downshifted 3.9V zeners to 3.3V.
- Removed general purpose switching diodes.

**Layout**

- Moved footprints from MPPT-PrimaryPCB.pretty to Footprints.
- Dropped copper weight down to 1oz/ft.
- Places JLCPCB passives on same side.
- Reduced power path area.
- Moved sensor paths away from high power current path.
- Stitching vias and secondary GND plane for thermal and EMI improvement.

---

## 3.3.1

**Schematic**

- Vout and GNDout pins swapped to correct pins for IES01_PDS1 (U4).
- EN pin for UCC37321 given an MCU DIO to be SW ambiguous to UCC37321, UCC37322 (U3).
- Maxim Integrated 40075 voltage op amp switched to TI OPA990 to run on +9VA.

**Layout**

- Slight changes around power, gate driver routing.

---

## 3.4.0

- Versioning is unified between schematic, layout, and BoM.
- This repo is now a subrepo in the Power-Generation monorepo.

**Schematic**

- Schematic has been broken into hierarchical sheets and all components are
  re-enumerated for future extensibility.
- Snubber values are finalized.

**Layout**

- Layout silkscreen is updated.

## 4.0.0rc (proposed)

- Proposal to use modified design from
  [MPPT-design](https://github.com/dimembermatt/MPPT-Design), particularly
  v0.2.0.


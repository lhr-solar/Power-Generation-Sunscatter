# :sunny: Sunscatter - Maximum Power Point Tracker Board

- [:sunny: Sunscatter - Maximum Power Point Tracker Board](#sunny-sunscatter---maximum-power-point-tracker-board)
  - [Repository Structure](#repository-structure)
  - [Maintainers](#maintainers)
  - [Versioning](#versioning)
  - [TODO](#todo)

---

## Repository Structure

- **datasheets** - contains datasheets for major components of the Sunscatter.
- **docs** - contains documentation on how to build, test, and use the Sunscatter.
- **fw** - contains fw that is loaded onto the Sunscatter.
  - **tests** - test programs used to characterize and validate the Sunscatter.
  - **src** - main program used to run the Sunscatter.
  - **inc** - internally developed libraries specific for the Sunscatter.
  - **lib** - third party libraries used by the Sunscatter.
- **hw**
  - **Footprints** - project specfic footprint association files for the Sunscatter.
  - **Models** - 3d .step files for the PCB 3d viewer.
  - **Symbols** - project specific symbol files for the Sunscatter.
  - **vX_Y_Z** - frozen versioning folder for PCB production files.
  - design files

---

## Maintainers

The current maintainer of this project is Matthew Yu as of 07/16/2023. His email
is [matthewjkyu@gmail.com](matthewjkyu@gmail.com).

Contributors to the HW and FW encompass many dedicated students, including:

- Jacob Pustilnik
- Afnan Mir
- Youssef Elsherif
- Austin Tsao
- Joseph Onofre
- Ricky Tiet
- Javier Lopez
- Chioma Okorie
- Corey Hulse
- Kaleb Todd
- Jennifer Dahm
- And many others...

Special thanks to Professor Gary Hallock, who supervised the development and
design of this project.

---

## Versioning

This PCB is on unified version `3.4.0`. Every time the schematic and/or layout
is updated, this version number should go up. We use [semantic
versioning](https://semver.org/) to denote between versions. See the
[changelog](./docs/CHANGELOG.md) for more details.

---

## TODO

Documentation

- Update assembly and testing document, ordering document, and improvement document.
- Add datasheets for key components of the device.

HW

- Transition to v4.0.0 using modified board design from MPPT-design repo
- Clean up files in hw folder

SW

- Regenerate code for MBED with proposed filestructure

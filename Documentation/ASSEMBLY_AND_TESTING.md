# HOW TO ASSEMBLE AND ELECTRICALLY TEST THIS PCB

v1.1.0

## Assembly and Testing Instructions

> These instructions are outdated for layout revision 3.3.0.

The board should be assembled and tested in sections to ensure proper
functioning. Assembly should go through the following sections in order:

1. Power Regulation
2. LEDs
3. Nucleo Connections
4. Sensors (Voltage and Current)
5. CAN
6. DC/DC Converter

### Step by Step Instructions

It's highly recommended to pull up the schematic and layout side by side while
assembling and testing the board. As a tip, you can click on the schematic
symbol, and if the layout window is open, it'll jump to that part on the layout.
Also hide everything except the Silkscreen or Fabrication layer (of the right
side of the PCB) to remove any clutter from the layout.

Also, if you find any discrepancies between these instructions and the board
layout, please file a PR or issue so it can be fixed!

1. Initial Board Checks

   Before installing anything, check for power shorts where there shouldn't be:
   - Between Array + and -
   - Between Battery + and -
   - Between Array and Battery
   - Between Car Power +12V and GNDPWR
   - Between Device Power +9VA and GNDREF
   - Between Car Power +12V and Device Power +9VA
   - Between Car Power GNDPWR and Device Power GNDREF
   - Between CAN Iso Vout and GndOut
   - Between CAN Iso Vin and GndIn
   - Between CAN Iso Vout and Vin
   - Between CAN Iso GndOut and GndIn

   Other important shorts to check for and eliminate:
   - Between CAN H and L
   - Between MOSFET terminals
   - Between Schottky Diode terminals
   - Between heat sinks and ground
   - On each Nucleo board, between A4 and D4 (shorted by SB18)
   - On each Nucleo board, between A5 and D5 (shorted by SB16)

2. Assembling Power Regulation

   1. Solder the smallest components first: L1, C4, C5, C6, C7. These can be
      done in any order.
   2. Solder test points: TP5, TP6, TP7, TP8. These can be done in any order.
   3. Solder power regulator U3.
   4. Solder the connector J1.
   5. Test for the following shorts:
      - Between Car Power +12V and GNDPWR.
      - Between Device Power +9VA and GNDREF.
      - Between Car Power +12V and Device Power +9VA.
      - Between Car Power GNDPWR and Device Power GNDREF.
      - Between pins on U3
   6. Connect +12V to the connector and verify that +9VA is at TP7.
   7. As a bonus, somehow make some noise at +12V and see how stable +9VA is.

3. LEDs

   1. Solder the smallest components first: R2 - R11 and LED1 - LED10. You get
      the drill by now.
   2. Check for shorts across each resistor-LED pair. As a tip, the LED
      reference number is always one less than the resistor reference number.
   3. Further testing on these will occur in the next step.

4. Nucleo Connections

   1. Solder the smallest components first: D1, D2, C1, C2, C3, R1. Make sure
      you know which direction the diodes should go on the layout. You get the
      drill by now.
   2. Solder test points: TP1, TP2, TP3, TP4.
   3. Solder the Drive PWM signal driver U2.
   4. Solder the headers for the Nucleo (U1) and make sure they are upright.
   5. Then solder in the switches SW1 and SW2.
   6. Test for the following shorts:
      - Across SW1 (shorts only when pushed)
      - Across SW2 (shorts only when ON)
      - Between pins on U2 (and U1, if you're bored)
   7. Plug in the Nucleo and then test for shorts between D4 and A4 and between
      D5 and A5. If there are shorts here, you will need to remove SB18 or SB16,
      respectively, from the Nucleo board.

      **YOU MUST DO THIS FOR EVERY NUCLEO YOU PLUG INTO THE MPPT.**

   8. Load up the Nucelo with a test program to cycle LED pins and outputs a PWM
      signal with a non-trivial duty cycle and see if they light up/are correct
      on an O-scope. Unplug the Nucleo from USB, and connect 12V to the Car
      Power Connector J1 (But not both!). Make sure the Nucleo powers on again
      and the test program works as expected.
   9. Remove the Nucleo and all sources of power before further assembly.

5. Sensors (Voltage and Current Sensors)

   It's recommended to do one of these sensors at a time.

   1. Pick a sensor. We'll use the Array Voltage Sensor as an example.
   2. Solder the smallest components first: R18, R19, R20, C15, D11, D12. Make
      sure you know which direction the diodes should go on the layout.
   3. Solder test point TP19.
   4. Solder the chip U6.
   5. Test for shorts across the pins on U6, and that we have a connection
      between pad 6 of U6 (+3.3V) and the +3.3V pin of the Nucleo (after
      plugging it in, but not powering it).
   6. To test the sensor, you can now power the Nucleo with the USB.
      Apply a large voltage across Array +/- (likewise with Battery +/-). The
      LED circuitry for the array is designed for up to 100V, and the LED circuitry
      for the battery is designed for up to 130V.

      Note: If you're starting with the voltage sensors, you'll need to bridge
      Arr- or Batt- with GNDPWR first until the current sensors are installed.
      You could probably do a solder bridge on the current sensor shunt
      resistor, but if you're uncomfortable removing solder there later, use
      some thick wire to bridge the test points for ARR- (TP12) and BATT- (TP16)
      with the GNDREF test point (TP8). You could also use -SNUB (TP15) as
      GNDREF.

      Make sure you can read the expected voltage or voltage range at the output
      test points. You might also want to run a profile across the sensors and
      profile the relationship for interfacing the sensors in SW later. At
      least, it'll make your life easier in the future.

      Make sure you remove the Nucleo and any power after testing.

6. CAN Circuit

   1. Solder chip U8 **first** and test for shorts across adjacent pins.
   2. Solder the smallest components: C17 - C24, L3, L4, R25, R26.
   3. Solder bridge R24.
   4. Solder test points TP21 - TP28.
   5. Solder the chip U9.
   6. Solder the termination header JP1.
   7. Solder the CAN Connectors J4, J5.
   8. Test for the following shorts:
      - Between CAN_H and CAN_L.
      - Between CAN_Tx, CAN_Rx.
      - +5V and GNDPWR (Power side).
      - 5V and GND (CAN side).
      - Across adjacent pins in U8, U9.
   9. Plug in the Nucleo, connect J4/J5 to a CAN bus, and run a CAN
      communication test to ensure that the installed CAN circuitry is
      functional.
   10. Remove any power, the Nucleo, and then CAN connections before further
       assembly.

7. DC-DC Converter
   1. Solder the smallest components first: D3, R12. Make sure you know which
      direction the diodes should go on the layout.
   2. Then do some of the larger parts, in no particular order: F1, F2, R13, C9.
   3. Now install the heatsinks HS1 - HS3.
   4. Then install the MOSFETs and other diodes: Q1, Q2, D4, D5, D6. Make sure
      they fit the heatsinks and have a screw inserted to keep them connected.
      Maybe add thermal paste.
   5. Install the test points: TP9 - TP16.
   6. Finally, install the large stuff: J2, J3, C8, C9, L2.

8. Post checks

   Now that you've made it to the end (we hope) of assembly and preliminary
   testing, you should do a couple things before running full MPPT tests and
   running MPPT algorithms on it.

   1. First, check the board for obvious soldering defections like burnt traces
      or exposed component legs. Make sure those still work. For any solder
      bridges that shouldn't fix, you should fix them. Or get somebody who's
      better than you to fix them.
   2. Check to see if you have any remaining parts hiding in the pile of
      plastic packages you probably received. Any remaining parts should
      probably be a cause for concern (unless you knew you were going to blow
      something and had the foresight to get extra) and you should definitely
      see where they might have come from.

      The MPPT Parts list is **THE** definite source of truth, and tells you
      where each part is tied to which reference and thus their position on the
      layout. Check there first before running to the electrical lead to help
      you.
   3. It might be a good idea if you're bored to run any electrical/short tests
      that were described earlier in these instructions. There's always a small
      chance that some assembly you did later on broke/removed/damaged previous
      parts.

You now have a completed MPPT (I hope) and I wish you luck in your future solar
car endeavors!

This assembly guide was last modified *12/13/2020* by **Matthew Yu**.

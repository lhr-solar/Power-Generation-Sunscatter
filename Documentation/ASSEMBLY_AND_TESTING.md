# HOW TO ASSEMBLE AND TEST THIS PCB

v1.1.0

## Assembly and Testing Instructions

### v3.2.0

The board should be assembled and tested in sections to ensure proper
functioning. Assembly should go through the following sections in order:

1. Power Regulation
2. LEDs
3. Nucleo Connections
4. Sensors (Voltage and Current)
5. CAN
6. DC/DC Converter

#### Step by Step Instructions

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

### v3.3.x, v3.4.0

> v3.3.x should be compatible with these instructions, although component
> numbering will be different.

The board should be assembled and tested in sections to ensure proper
functioning. Assembly should go through the following sections in order:

1. Pre Board Checks
2. Power Regulation
3. MCU
4. LEDs
5. CAN Driver
6. Gate Driver
7. Sensors
8. DC/DC Converter
9. Post Board Check

#### Step by Step Instructions

It's highly recommended to pull up the schematic and layout side by side while
assembling and testing the board. As a tip, you can click on the schematic
symbol, and if the layout window is open, it'll jump to that part on the layout.
Also hide everything except the Silkscreen or Fabrication layer (of the right
side of the PCB) to remove any clutter from the layout. You can also use the
provided `ibom.html` (open it in your browser!) for placing components. This is
useful for tracking assembly.

Ideally, JLCPCB or the PCB manufacturer will have assembled most of the board,
if not just the passives. For the components that are already on the board, you
do not need to solder them on, but make sure to test them!

Also, if you find any discrepancies between these instructions and the board
layout, please file a PR or issue so it can be fixed!

##### Soldering Order
1. The recommended order for soldering components are:

    1. Soldering the smallest components.
    2. Solder from the center outwards.
    3. Soldering the back side components.
    4. Soldering the SMD components.
    5. Soldering the through hole components.

    An example of this priority system is soldering on the LEDs (LED201,
    LED202) and the SMD converter (U202) prior to the Molex connector (J201)
    and the fuse box (F201).

##### Testing Instructions
1. Pre Board Checks

    Before installing anything, check for power shorts where there shouldn't be.
    This list is not exhaustive, and only consist of either power lines or high
    energy signals that cannot be current limited by the source.
    - Power Regulation
        - __F201 Fuse:__ +12V (J201 Pin1) and +12V (TP201)
        - __12V Car Power Line:__ 12V (TP201) and Car GND (TP202)
        - __+5V Board Power Line:__ +5V (TP204) and Board GND (TP203)
        - __9VA Board Power Line:__ 9VA (TP205) and Board GND (TP203)
        - __12V to +5V Transition:__ 12V (TP201) and +5V (TP204)
        - __+5V to 9VA Transition:__ +5V (TP204) and 9VA (TP205)
        - __Car to Board Isolation:__ Car GND (TP202) and Board GND (TP203)
        - __+3V3 Board Power Line:__ +3V3 (TP101) and Board GND (TP203)
    - DC/DC Converter
        - __F401 Fuse:__ Solar Array+ (J401 Pin1) and +ARR (TP507)
        - __F402 Fuse:__ Battery+ (J402 Pin1) and +BATT (TP509)
        - __+ARR Power Line:__ +ARR (TP507) and -ARR (TP502)
        - __+BATT Power Line:__ +BATT (TP509) and -BATT (TP505)
        - __Drive PWM Isolation:__ GATE (TP401) and Board GND (TP203)
        - __Snubber Isolation:__ +SNUB (TP402) and -SNUB (TP404)

        Note that -SNUB (TP404), GND (TP203, TP302, TP501, TP505) are functionally equivalent.

2. Power Regulation

    Following the soldering order, solder on the components specified in the
    power_regulation schematic page (ID: 2/7).

    To test this circuit, after soldering, insert an 8A fuse into the fuse
    holder (F201) and plug into the molex connector (J201) a 10.8 - 13.2 VDC
    source.

    Using a multimeter, measure across 12V (TP201) and Car GND (TP202). This
    should be the value of your input. The output of U201 at +5V (TP204) and
    Board GND (TP203) should be 5V. The output of U202 at 9VA (TP205) and Board
    GND (TP203) should be 9V.

    Additionally, the LEDs (LED201, LED202) should both be on and green.

3. MCU

    Following the soldering order, solder on the components specified in the
    root schematic page (ID: 1/7). The Nucleo should be plugged into standard
    2.54mm headers that are soldered into the U101 footprint so they can be
    replaced if necessary.

    To test this circuit, after soldering, plug in the molex connector (J101) a
    7 - 12 VDC source.

    Using a multimeter, measure across +9V (TP102) and Board GND (TP203). This
    should be the value of your input. The output of U101 at +3V3 should be
    3.3V.

    Additionally, the onboard LED of the Nucleo should turn on when powered.

    Additionally, the reset switch (SW101) should turn off the onboard LED when
    held down. This should happen when the Nucleo is powered through the 9V
    supply (J101) or when Car Power is applied (J201).

4. LEDs

    Following the soldering order, solder on the components specified in the
    leds schematic page (ID: 7/7).

    Apply voltage across the circuits (input and GND). The LEDs should turn on
    if the polarity is correct.

    Additionally, run the indicator_test from the Power-Generation/Sunscatter
    fw. The LEDs should turn on and off in a round-robin order.

5. CAN Driver

    Following the soldering order, solder on the components specified in the
    can_driver schematic page (ID: 6/7).

    Run the can_test from the Power-Generation/Sunscatter fw with another CAN
    capable (and working!) board. One board should be specified as
    `__USER_ONE__` and the other should not be. This test should pass a message
    between the two boards every second and should be visible on a serial
    terminal (115200 baud).

6. Gate Driver

    Following the soldering order, solder on the components specified in the
    gate_driver schematic page (ID: 3/7). 

    +3V3 using a F-M jumper can be routed from a powered Nucleo to the PWM pin
    (TP301). Based on the driver populated (UCC37322, noninverting), (UC37321,
    inverting), the output should be ~8.5-9V based on the input state (0, 3.3V).
    This can be measured from the Gate testpoint (TP401) and -SNUB (TP404).

7. Sensors

    Following the soldering order, solder on the components specified in the
    sensor schematic page (ID: 5/7).

    To test but not calibrate these sensors (a whole another topic, see the
    Power-Generation/Sunscatter/test_data/sunscatter_characterization/sunscatter_characterization.xlsx
    spreadsheet for more details), power the board (+9VA LED should light up).

    Using a power supply, apply some amount of voltage across the voltage
    sensors with the +ARR or +BATT connectors. Use a multimeter to measure the
    op amp output at TP508, TP510. This should match the given voltage divider
    ratio output.

    You can also attempt shorting the +BATT side with the DC/DC converter once
    it is populated and have the GATE open. The current should flow through both
    current sensors (make sure you're current limited to less than 6A! The board
    is theoretically rated up to 8A).

8. DC/DC Converter

    Following the soldering order, solder on the components specified in the
    boost_converter schematic page (ID: 4/7). Apply thermal paste to the
    components that will be attached to the heatsinks, screw them into the
    heatsinks, _and then_ insert them into the board for soldering.

    To test but not calibrate the converter (a whole another topic, see
    Power-Generation/Sunscatter/test_data/dc_dc_converter_characterization/ for
    more details), power the board (+9VA LED should light up).

    Stick an oscilloscope probe across the snubber (TP402, TP404) and on the
    output (TP509, TP404). Input a fixed power source (perhaps 10V, 1A) at the
    solar array connector and attach a signal generator to the GATE (TP401,
    TP404). Observe the voltage output and the snubber/output waveforms as the
    signal generator waveform (recommend square wave) frequency increases.

9. Post Board Check

    1. Check the board for obvious soldering defections like burnt traces
       or exposed component legs. Make sure those still work. Remove any solder
       bridges and use q-tips dipped in isopropyl alcohol or flux remover to
       clean away any flux used during assembly.
    2. Make sure that there are no parts remaining that have not been assembled
       (excluding spares). The ibom.html mentioned earlier can be helpful for
       this.
    3. The parts list embedded into the KiCAD project, the ibom.html, and any
       boms generated are the source of truth for the PCB. If there are any
       inconsistencies between the three or with your assembly, make sure you
       correct the inconsistency or file an issue so it can be fixed.
    4. Feel free to fall back on running the tests described here to do sanity
       tests when the PCB stops working or exhibits undefined behavior. Assembly
       and/or usage may break or damage the circuit, even if you think you were
       careful with it.

# IMPROVEMENTS FOR SUNSCATTER HW

v1.0.0

This is a list of changes we can make to the board in future versions to improve
it in various ways. Some of these are functional, others are purely aesthetic.

1. **Isolate Nucleo From High-Power Domain**

   Currently, the Nucleo operates in the same power domain (that is, the same
   ground and without isolation) as the high power components of the board -
   that is, the DC/DC boost converter. It would be far safer for it to be
   isolated, both for the Nucleo itself and for users interacting with it.

   Once the Nucleo is properly isolated from the high-power domain, it can
   either be tied directly to the car's low-power domain, or it can remain
   isolated from it. For simplicity I recommend tying it to the car's low-power
   domain, but it might be slightly safer for operators if it's isolated.

   Three major components would need to be reworked to enable this:
   1. the voltage sensors
   2. the current sensors
   3. the MOSFET driver

   These are the next couple of numbered points.

2. **Upgrading the voltage sensors**

   To upgrade the voltage sensors, we would want to use an isolating amplifier
   such as the AMC1211. This chip has an input range of 0-2V, so we would need
   to adjust the voltage dividers and their protection diodes appropriately.
   Both the input and the output require 3.3-5V power.

   The output of TI's isolating amplifiers, unfortunately, is differential
   rather than single-sided. (Explain how to convert this. example in
   datasheet. Idea: difference amplifier like INA132?)

3. **Upgrading the current sensors**

   Just like voltage sensors, but with current-sense isolating amplifiers.

4. **Upgrading the MOSFET driver**

   This is a fairly easy upgrade, since our current chip already looks a lot
   like an isolated FET driver.

   TI designs chips specifically for driving MOSFETs through isolation. One
   example of this is the UCC21541, with dual-channel isolation.* On the
   input/Nucleo side, you would provide 3.3V power from the Nucleo and use
   standard IO to drive IN_A. On the output side, you would provide 12V from the
   high-power domain and route the output just like you would from our current
   chip.

   As of this writing, the price for the UCC21541 is similar to that of our
   current chip, but Mouser currently doesn't stock it. We would want to find
   one that operates similarly but that Mouser actually stocks.

   We only need one channel, but the only chips TI offers with one-channel
   isolation are far more complicated to use.

5. **Switch to synchronous boost converter**

   Up to 8A * 1.75V = 14W may be dissipated through the schottky diode forward
   bias mode. Perhaps higher based on surge current. This loss can be reduced by
   replacing the schottky diodes with low Rds_ON mosfets. This may also reduce
   the need for a third heatsink.

   Note that the noise should proportionally double. We should test combinations
   of the boost converter with the snubber circuit to see if the power loss
   through the snubber is more significant than the power saved using a
   synchronous topology.

6. **Add ports for light and temperature sensors**

    Merging the Blackbody boards with Sunscatter can reduce board waste for
    minimal space utilization. Required: 2 TSL2591 or equivalent light sensing
    ports, and up to 8 RTD sensors. The latter may use a multiplexer and a
    single MAX31865 chip. Test w/ v2.0.0 of Blackbody A first.

7. **Upgrade MCU processor and use just the chip**

    Currently we use the nucleo breakout board. Other LHR Solar boards solder
    the STM32L432KC chip directly to the PCB. This reduces space and removes
    extra peripherals that are not used. Requires extra hardware for STLINK
    communication and flashing.

8. **Reset switch Pullup**

    Powering the Nucleo through 5V (using Car Power 12V instead of the 9V supply
    for testing) needs a pullup resistor on the reset switch (SW101). Behavior
    is finnicky and the Nucleo onboard pullup is insufficient.

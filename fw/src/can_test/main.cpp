/**
 * @file main.cpp
 * @author Matthew Yu (matthewjkyu@gmail.com) and Roy Mor (roymor.102@gmail.com)
 * @brief Test main that tests the CAN hardware on the v3.3.0 MPPTs.
 * @version 1.2.0
 * @date 2023-11-18
 * @copyright Copyright (c) 2022
 * @note Leave _LOOPBACK__ commented in to do loopback mode. Leave __USER_ONE__
 * commented in to transmit can_id = 0x0. Comment __USER_ONE__ out to transmit
 * can_id = 0x01.
 */
#include "mbed.h"
#include <cstdio>

#define PCB_MAJOR_VERSION   3
#define PCB_MINOR_VERSION   3
#define PCB_PATCH_VERSION   1
#define BLINKING_RATE       500ms
#define __LOOPBACK__        0
#define __USER_ONE__        0
#define CAN_SCA_ARR_VOLT 0x601
#define CAN_SCA_OVERRIDE 0x605
#define CAN_BBA_TEMP     0x626
#define CAN_BBA_IRRAD    0x627


Ticker ticker;
CAN can(D10, D2);           // D2 (TX), D10 (RX)
DigitalOut led(D13);        // STM32 Onboard LED
char counter = 0;
bool flag = false;
float temp_counter;


/**
 * @brief Tell the main thread to send a message and toggle the LED.
 */
void send() {
    led = !led;
    temp_counter += .5;
    if (!flag) {
        flag = true;
    }
}

/**
 * @brief Communicate with itself or another PCB via CAN.
 * 
 * @return int 
 */
int main() {
    ticker.attach(&send, 200000us);
    CANMessage msg;
    float volt = 5.712;
    float temp = 23.8;
    float irrad = 1000.0;
    temp_counter = 0;


#ifdef __LOOPBACK__
    can.mode(CAN::LocalTest);
#endif

#ifdef __USER_ONE__
    const uint32_t can_id = 0x00;
#else
    const uint32_t can_id = 0x01;
#endif

    while (true) {
        if (flag) {
            flag = false;
            //Sims MPPT 1-3 Setpoint & Measurement writing
            for(int i = 0; i < 15; i++) {
                can.write(CANMessage(CAN_SCA_ARR_VOLT, (char*)&volt, 4));
                printf("%f ", volt);
            }
            printf("\n");

            //Sims Blackbody A IRRAD writing
            for(int i = 0; i < 4; i++) {
                can.write(CANMessage(CAN_BBA_IRRAD, (char*)&irrad, 5));
                printf("%f ", irrad);
            }
            printf("\n");



            // if (can.write(CANMessage(can_id, &counter, 1))) {
            //     ++counter;
            //     printf("User %i sent message: %d\n", can_id, counter);
            // } else {
            //     printf("No message sent.\n");
            // }
        }

        //Sims Blackbody A TEMP writing
        if(temp_counter == 2.5) {
            temp_counter = 0;
            for(int i = 0; i < 8; i++) {
                can.write(CANMessage(CAN_BBA_TEMP, (char*)&temp, 5));
            }
        }

        if (can.read(msg)) {
            // printf("Message received from %i: %d\n", msg.id, msg.data[0]);
            if(msg.id == CAN_SCA_OVERRIDE) printf("RECEIVED OVERRIDE WOOOOOO, value = %d\n", msg.data[0]);
        } else {
            // printf("No message received.\n");
            ThisThread::sleep_for(100ms);
        }
    }

    return 0;
}

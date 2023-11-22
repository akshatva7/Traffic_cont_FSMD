# Traffic Light Controller 

## FSM - D

In the context of a traffic control controller, an FSM (Finite State Machine) with "D" states represents a model for how the traffic control system operates, taking into account different operational modes or states. The "D" in this case would be the number of states or operational modes the controller can be in. Let's break it down with an example:

Suppose we have a traffic control controller with 4 states ("D" is 4):

- *S0:* When traffic at A is High - light A is green and light B is red
- *S1:* Buffer for transition of light A from green to yellow and light B remains red
- *S2:* When traffic at B is High - light A is red and light B is green now
- *S3:* Buffer for transition of light B from green to yellow and light  A remains red

Each state represents a different mode of operation for the traffic control system, and the controller transitions between these states based on predefined rules or conditions. 

![WhatsApp Image 2023-10-22 at 22 43 01](https://github.com/akshatva7/Traffic_cont_FSMD/assets/135726741/a0f4c2e8-03f9-4730-88a1-7c67a85f9ce2)

The transitions between these states are determined by various inputs, sensors, and rules. The FSM provides a structured way to model and understand the behavior of the traffic control system under different scenarios. It helps ensure that the system responds appropriately to changing conditions and events on the road. The specific conditions and transitions would depend on the design and programming of the traffic control system and the specific requirements of the traffic management.

## Waveforms and Outputs

Reports of the coverage and waveforms have been provided.

![Screenshot from 2023-11-21 16-50-02](https://github.com/akshatva7/Traffic_cont_FSMD/assets/135726741/2c1cf2e0-db4f-481f-8c57-ddb8601d0670)


## Code Coverage

![WhatsApp Image 2023-11-22 at 09 38 22](https://github.com/akshatva7/Traffic_cont_FSMD/assets/135726741/f33c8584-3dbd-47ba-a6dd-cccbf93812af)


# Code Coverage of Layered Testbench

![Screenshot from 2023-11-21 16-48-40](https://github.com/akshatva7/Traffic_cont_FSMD/assets/135726741/4e5036f5-2d0e-4c4f-a706-e178d1efb02d)




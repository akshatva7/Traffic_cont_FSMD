# Traffic Light Controller 

## FSM - D

In the context of a traffic control controller, an FSM (Finite State Machine) with "D" states represents a model for how the traffic control system operates, taking into account different operational modes or states. The "D" in this case would be the number of states or operational modes the controller can be in. Let's break it down with an example:

Suppose we have a traffic control controller with 4 states ("D" is 4):

1. **State 1: Idle:** In this state, the traffic control controller is waiting for a change in traffic conditions or user input. It may simply be maintaining the current traffic light cycle.

2. **State 2: Normal Operation:** This state represents the standard operation of the traffic lights, following a predefined traffic light cycle or pattern.

3. **State 3: Emergency Mode:** If there is an emergency, such as an ambulance or fire truck approaching, the controller may switch to this state, prioritizing the emergency vehicle's passage.

4. **State 4: Maintenance Mode:** In this state, the controller is undergoing maintenance or reprogramming. It's temporarily taken out of active traffic control.

Each state represents a different mode of operation for the traffic control system, and the controller transitions between these states based on predefined rules or conditions. For example, it may transition from "Normal Operation" to "Emergency Mode" when it detects sirens from an approaching emergency vehicle.

The transitions between these states are determined by various inputs, sensors, and rules. The FSM provides a structured way to model and understand the behavior of the traffic control system under different scenarios. It helps ensure that the system responds appropriately to changing conditions and events on the road. The specific conditions and transitions would depend on the design and programming of the traffic control system and the specific requirements of the traffic management.

## Waveforms and Outputs

The following is a Verilog HDL FSM-D design code and testbench for an Traffic Light Controller.

Reports of the coverage and waveforms have been provided.

![WhatsApp Image 2023-10-19 at 11 25 53](https://github.com/akshatva7/Traffic_cont_FSMD/assets/135726741/3c0de847-a5cd-4910-92ec-846896f7fe36)


![WhatsApp Image 2023-10-19 at 11 26 16](https://github.com/akshatva7/Traffic_cont_FSMD/assets/135726741/7cc1dffb-56eb-4648-92d9-dc4f0fbe3705)



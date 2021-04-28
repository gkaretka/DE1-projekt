# Door lock system

Door lock system with PIN (4-digit) terminal, 4x3 push buttons, 4-digit 7-segment display, relay for door lock control.

### Team members

Filip Kocum 
Martin Knob
Vojtěch Hroch
Gregor Karetka 

[GitHub repository link](https://github.com/gkaretka/DE1-projekt)

### Project objectives

Build door lock system with 4x3 keyboard, 4-digit 7-segment display, relay for door control.

- 4x3 keyboard
   - mesh keyboard (instead of 12 inputs, only 4 inputs and 3 outputs are necessary)
   - deglitch system (keys are deglitched using own algorithm)
- 4-digit 7-segment display
  - displays entered numbers (when using input as unlock or as new pin input)
- relay for door control
  - relay is opened when correct pin is entered

- additional feature
  - 3x wrong data input delay (after 3 failed attempts to enter correct pin, system locks itself for 30 seconds)
  - unlock hold with reset (after entering correct pin, system is unlocked for 30 seconds unless reset button is pressed)
  - new pin enter system (when device is unlocked new pin can be set by entering digits numbers and pressing set button)
    - new pin is stored until device is hard reseted (done by user unaccessible button)

## Hardware description

### Simple hardware block diagram

![schematic0](img/block_diagram.png)

### Schematic of hardware design

![schematic1](img/schematic.png)

### Interconnection between Arty and our own board

![schematic2](img/arty_connection.png)

## VHDL modules description and simulations

### debouncer
Debouncer is crude digital filter used for deglitching/debouncing incomming user input signals. These signals are rather noisy so this is important block for every system that handles user input in analog way. Single debouncer(in this application it is 4x debouncer) is block with one input and one output. It samples signal with main high speed clock. When input is high debouncer starts counting up on every clock tick, until reaching counter limit. Output of single debouncer is high when counter is more than our threshold (settable) othewise it is low. This prevens sudden changes on output and makes it more stable.

- sounce files
  - debouncer.vhd
- simulation files
  - tb_debouncer.vhd

#### TB debouncer simulation

![schematic2](img/tb_sims/debouncer.PNG)


### keyboard
Keyboard is mesh controller used for decoding mesh input and transforming it to vector format used later in application. This module switched very fast between three columns of buttons and read four inputs or rows (these are going through debouncer first). After that it sets bit with index of our key in its output vector. It uses state machine to be consistent. There is built in feature that prevents multiple button press on one real press caused by very fast clock speed (that is used for sampling).

### Keyboard state diagram
![schematic2](img/keybord_statemachine.PNG)

- sounce files
  - keyboard.vhd
- simulation files
  - tb_keyboard.vhd

#### TB keyboard simulation

![schematic2](img/tb_sims/keyboard.PNG)


### keyboard decoder
Keyboard decoder is simple module written for better code organization. It uses synchronous input from keyboard vector output and outputs structural data for later use in application. This block is basically interconnection between low level modules and high level application logic. By using this block we were able to write code faster because we do not need to take care of low level stuff. Output of this block is `command type` and `data type`. These two types store higher level information than simple logic vector.

- sounce files
  - keyboard_decoder.vhd
- simulation files
  - tb_keyboard_decoder.vhd
  - tb_keyboard_withraw_input.vhd

#### TB keyboard decoder simulation

![schematic2](img/tb_sims/keyboard_decoder.PNG)

## TOP module description and simulations

Write your text here.


## Video

*Write your text here.


## References

   1. Write your text here.

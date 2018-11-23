% [ 200 OK ] The Minimalists' Linux Workstation
% vim, tmux, git and repeat

## history
  * Freeze block 1
  * Start block 2

## Intro

### THE FEEDBACK SYSTEM

Major linux distributions will source to us linux questions and we will present
to the user when the feeback button is pressed

You use programming to hack stuffs, and you do it with Linux. You have learned
the minimalistic ways of the terminal and use vim do change your config files.
You share your code with git and think tmux is the best DE ever :D

You want a simple environment which will help you get things done.

## AD1

There are so many paths a developer can take because there are hundreds of
programming languages in use. In terms of ecosystems, your IDE can be VS Code
running on Windows, Xcode in MacOS or Vim and Emacs in Linux.

But this doesn't necessarily materialize for everyone. You might use Notepad++
or Notepad for simple stuffs. Or you might use Atom or Netbeans. Every
developer is comfortable with different tools.

Announcing [ 200 OK ], a keyboard-case for the Raspberry Pi family of
computers:

  - 77 keys
  - Intergrated power supply and power buttom
  - Headphone jack
  - Quick access to microsd

* - monitor is not included

 +---------+----------+-----------------------------------------------
 |         | Pi Model | KBD    | Battery | Backlit
 +---------+----------+------------------------------------------------
 | Block 1 |  ZeroW   | Cherry | No      | No
 |         |          | MX     |         |
 +---------+----------+--------------------------------------------
 | Block 2 |  3B      |        | Yes     | Yes
 +---------+----------+-------------------------
 | Block 3
 |
 | Block 4
 |
 | Block 5
 |
 +-------------------------------------------------------------------------

Block 1 part list:
  * keyboard PCB kicad
    - ATMega16U2
    - RPi GPIO
    - Cherry MX switches
    - Case OpenSCAD
    - Custom keycaps

Block 1 software list:
  * spacecracft boot
  * shell
  * david (vim, tmux, git, bash oriented)
    ~/bin
    ~/git/wiki

# TODO
  * Case design in openscad
  * Create PCB components list: ATMega16U2, audio out
  * I wish it could boot instanteneously - text mode and busybox?
  * adapter in the case to fit a smartphone
  * replace the arrow keys for a thumbstick?

## Resources

  * http://fab.cba.mit.edu/classes/863.14/people/andrew_mao/week11/
  * https://www.youtube.com/watch?v=IKe_hrvYH1M
  * https://github.com/ruiqimao/keyboard-pcb-guide
  * http://www.keyboard-layout-editor.com/#

# INTRO

    The [ 200 OK ] is a Linux Workstation, a full-featured* computer aimed at
    *learning* operating systems and programing.
                                                 * - HDMI display not included

    It has a 70% mechanical keyboard with 79 Cherry MX Blue keys, a mini HDMI
    port and micro Usb and power ports. Just like the old 8-bit computers like
    the Commodore 64 and the ZX Spectrum.

    Its minimalist design was created to keep you focused on coding.

    It boots under 3 seconds (a bit more if you choose to setup GUI).

## The basics (almost...)

                                 What's included:


                           Mini HDMI-.         .-Micro USB
                       16GB MicroSD-. \       /.-Power
                                     \ \     //
                            +-----------h---up------+
                            |    E)..,.........(P   |
                            |    `1234567890-= (B   |
                            |    Tqwertyuiop[] (E   |
                            |    CRasdfghjkl;' \E   | -> 79 keys
                            |    SF zxcvbnm,./P^P   |
               Headphone <- A    F S A(   )ASS<v>   |
                    Jack    +-----------------------+

    Running at 170mA on peak CPU load, the BCM2835 is not a powerhouse.
    Fortunatelly you don't need much to shine with tmux or screen. Write
    code and markdown with vim, use git to clone your favorite code, surf
    a poluted-free web with w3m, automate your tasks with bash and more.

## Pi Zero

The Pi Zero W is a low power, general purpose computer that measures 65x30x5mm
and packs a 32-bit ARM11 SoC, the Broadcom BCM2835:

  * 1 GHz CPU (16K of L1 and 128KB of L2 cache)
  * 250 MHz "Video Core 2" GPU
  * 512MB RAM
  * Micro SD card slot
  * 2.4GHz 802.11n WIFI and Bluetooth 4.1 and LE
  * Mini-HDMI port
  * 40 GPIO pins

## Keyboard

In order to use the Raspberry Pi Zero W, we have created a custom PCB to house
the components for the keyboard (ATMega16U2) and audio out - since the Pi 0W
doesn't originally has a 3.5mm jack.

The PCB has headers to connect to the PI zero GPIO.

     14      ESC) F1  F2  F3  F4  F5  F6  F7  F8  F9  F10 F11 F12 POWE
     14      `~ 1!  2@  3#  4$  5%  6^  7&  8*  9(  0)  -_  =+  BACKSP
     14      TAB  q   w   e   r   t   y   u   i   o   p   [{  ]} ENTER
     13      CTRL) a   s   d   f   g   h   j   k   l   ;:  '"  \|  TER
     14      SHIFT) z   x   c   v   b   n   m   ,>  .>  /?   PU  ^  PD
     10      FN) SUP  ALT  (                )  ALT SUP SHIF  <-  v  ->
     79 keys

    Unix workstations previously had a big Control key where the CapsLock
    sits nowadays. They also had a big Enter key. The navigation keys are
    packed bellow the Enter, making the necessity to move the shift key
    (which was kept in a different place to maintain simetry).

    The navigation keys will end up being more important than having the
    right shift positioned in its old place.

    The keyboard colour scheme is for the student benefit.

    The function key is present to give another layer for accessing missing
    keys like Delete, Insert, PrtScr, SysRq, Home and End.

    The 60% keyboard doesn't have the top function keys and the 75% keyboard
    has a extra column after the Enter, which make things confusing. So we
    opted for a hybrid between 60% and 75%. It will be the width of a 60% with
    an extra row on the top for the function keys.

### layout

  http://keyboard-layout-editor.com/

  Fn + Backspace = Delete
  Fn + F10       = Insert
  Fn + F8        = PrtScr
  Fn + Ctrl      = SysRq
  Fn + Page Up   = Home
  Fn + Page Down = End

## Software

kernel, raspbian, tmux, bash, git, vim, w3m

### Function keys

    F1 - tmux: enter copy mode
    F2 - tmux: paste
    F3 - tmux: split vertically
    F4 - tmux: split horizontally
    F5 - volume down
    F6 - volume up
    F7 - vim: format code according to language
    F8 - screencast
    F9 - tmux: internet search
   F10 - tmux: new window
   F11 - tmux: full screen
   F12 - tmux: last window

### Git

  * user/wiki
  * wikipedia
  * SGResearch/200OK
  * SGResearch/shell
  * youtube

### bash

sudo apt will be enabled for the default user

define | dictionary
di     | another dictionary
dado   | random number from 0 till 19
loc    | find
bawk   | block awk extraction from file
wiki   | wikipedia
pt     | translate to portuguese
cz     | translate to czech

# Software

## Software setup

### Flashing, and activating ssh and wpa_supplicant.conf

    $ sudo dd bs=4M if=2018-04-18-raspbian-stretch.img \
      of=/dev/mmcblk0 conv=fsync

After finished, mount the fat partition and:

    touch ssh

    cat wpa_supplicant.conf <EOF
    example here

### LED

The Pi Zero's only has one LED, led0 (labeled 'ACT' on the board). The LED
defaults to on (brightness 0), and turns off (brightness 1) to indicate disk
activity.

If you want to turn off the LED on the Pi Zero completely, run the following
two commands:

    # Set the Pi Zero ACT LED trigger to 'none'.
    echo none | sudo tee /sys/class/leds/led0/trigger

    # Turn off the Pi Zero ACT LED.
    echo 1 | sudo tee /sys/class/leds/led0/brightness

To make these settings permanent, add the following lines to your Pi's
/boot/config.txt file and reboot:

    # Disable the ACT LED on the Pi Zero.
    dtparam=act_led_trigger=none
    dtparam=act_led_activelow=on

### Help system

    scriptreplay of a session showing at least 3 use cases for:
        * tmux
        * vi (markdown)
        * git
        * awk
        * grep
        * sed

#### tmux sheetcheat
#### vim shortcuts
#### w3m shortcuts
#### mutt shortcuts
#### SysRq shortcuts

                  Alt + SysRq + b - reboot immediately
                  Alt + SysRq + o - halt immediately
                  Alt + SysRq + n - nice reset
                  Alt + SysRq + f - calls oom_kill
                  Alt + SysRq + u - read-only filesystems
                  Alt + SysRq + s - sync
                  Alt + SysRq + e - end all processes
                  Alt + SysRq + i - killall (really)

When shortcut is triggered, open a small pane, show the quick help and inform
the pane will be closed in 15 seconds.

# business?

## cost estimation (really)

 Main computer                 ZeroW  9 eur  Raspberry Pi Zero W
 Custom PCB                           ? eur  Power circuit, usb hub
 Storage device                 16GB  9 eur  Class 4||10 SD
 Power source                     2A  3 eur  DC 5V 2A out
 3D printed case                 UWK  9 eur  Unix Workstation Keyboard
 Cherry MX keys                   79 52 eur  Brown
 ------------------             ----  -----
 Total                           NET 82 eur

## Price

Based on 45 eur:


                      |
         179.99       |*----------
                      |
                      |
         149.99       |            *-----------
                      |
                      |
         119,88       |                        *----------->
                      +------------------------------------
                       JFMAMJJASONDJFMAMJJASONDJFMAMJJASOND♾

## Ordering the PCB and Cherry MX keys

## 3D printing the case

## How to sell it?

# Appendix 1 - PCB circuitry

  * 79 Cherry MX keys connectors
  * 79 custom key-caps
  * 79 diods
  * ATMega16U2
  * audio out
    - 2x 270ohms resistors
    - 2x 150ohms resistors
    - 2x 10uf electroytic capacitors
    - 2x 0.01uf poliester-film capacitors
    - 3.5 headphone jack (microphone?)

# Appendix A - hardware schematics

## Raspberry Pi Zero W GPIO layout

The 40 Pin GPIO provides expansion to the system.

                      +3V3 out  [ 1] [ 2]  +5V
                        GPIO 2  [ 3] [ 4]  +5V
                        GPIO 3  [ 5] [ 6]  GND
                        GPIO 4  [ 7] [ 8]  GPIO 14 / uart0 tx
                           GND  [ 9] [10]  GPIO 15 / uart0 rx
                       GPIO 17  [11] [12]  GPIO 18 / pwm0
                       GPIO 27  [13] [14]  GND
                       GPIO 22  [15] [16]  GPIO 23
                      +3V3 out  [17] [18]  GPIO 24
                       GPIO 10  [19] [20]  GND
                       GPIO 09  [21] [22]  GPIO 25
                       GPIO 11  [23] [24]  GPIO 8 / spi-cs0
                           GND  [25] [26]  GPIO 7 / spi-cs1
                           _SD  [27] [28]  ID_SC (ID eeprom)
                       GPIO 05  [29] [30]  GND
                       GPIO 06  [31] [32]  GPIO 12
                       GPIO 13  [33] [34]  GND
                       GPIO 19  [35] [36]  GPIO 16
                       GPIO 26  [37] [38]  GPIO 20
                           GND  [39] [40]  GPIO 21 / gpclk1

### Extra connections

Along with the 40 pin GPIOs, the top of the device (where you see the CPU and
the USB, HDMI and SD card ports, houses some connections:

     +----------------------------------------------------------------+
     |               +-----------------------------------------+      |
     |               | 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 |->40  |
     |            1->| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 |      |
     |               +-----------------------------------------+      |
     |                                             GPIO               |
     |                                                 +-------+      |
     | The extra RUN pins are meant for a reset button |  0  0 | RUN  |
     |                                                 |-------|      |
     |                The TV pin is a composite signal | +0 -0 | TV   |
     |                                                 +-------+      |
     |                                                                |
     |                              () ()                             |
     |                                0                               |
     |                               USB                              |
     +----------------------------------------------------------------+

### Extra connections (cont)

In the bottom of the device there are:

    +-----------------------------------------------------------------+
    |                +-----------------------------------------+      |
    |                | 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 |->40  |
    |             1->| 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 |      |
    |                +-----------------------------------------+      |
    |                                                                 |
    |                            PP8()           PP5  ()              |
    |                                                  () PP17        |
    |                                            PP16 ()              |
    |                                                  () PP14        |
    |                                            PP18 ()              |
    |                                                  () PP19        |
    |                                            PP15 ()              |
    |                                                  () () PP39 PP36|
    |                                            PP20 ()              |
    |  PP1   PP40        PP9                                          |
    |  ()     ()          ()                                          |
    |  PP6   PP35  PP22 PP23                       PP38 PP37          |
    |  ()    ()     ()  ()                           ()  ()           |
    +-----------------------------------------------------------------+

   PP1: USB      PP14: SD CLK      PP17: SD DAT1     PP22: USB D+
   PP6: GND      PP15: SD CMD      PP18: SD DAT2     PP23: USB D-
   PP8: 3.3V     PP16: SD DAT0     PP19: SD CD

## ATMega16U2 schematics

Keyboard 8-bit RISC microcontroller - TQFP32 package
ATMega16U2 - 16 MIPS / 512b RAM / 512B EEPROM / 16KB ROM
LUFA


                                D+ <.          .> UGND
                             D- <\   \        /   /> UCAP
                        UVCC <\   \   \      /   /   /> PC4 (PCINT10)
                     AVCC <\   \   \   \    /   /   /   /> PC5 (PCINT9/OC.1B)
                          [32][31][30][29][28][27][26][25]
                XTAL1 [01]                                [24] Reset (PC1/dW)
          (PC0) XTAL2 [02]                                [23] PC6 (OC.1A/PCINT8)
                  GND [03]                                [22] PC7 (INT4/ICP1/CLKO)
                  VCC [04]                                [21] PB7
   (PCINT11/AIN2) PC2 [05]                                [20] PB6
     (OC.0B/INT0) PD0 [06]                                [19] PB5
      (AIN0/INT1) PD1 [07]                                [18] PB4
 (RXD1/AIN1/INT2) PD2 [08]                                [17] PB3
                          [09][10][11][12][13][14][15][16]
         (TXD1/INT3) PD3 </    /   /   /    \   \   \   \> PB2 (PDI/MOS/PCINT2)
             (INT5/AIN3) PD4 </   /   /      \   \   \> PB1 (SCLK/PCINT1)
         (XCK/AIN4/PCINT12) PD5 </   /        \   \> PB0 (SS/PCINT1)
               (RTS/AIN5/INT6) PD6 <.          .> PD7 (CTS/HWB/AIN6/T0/INT7)

## USB Wiring standard

    Red   - 5V DC
    Black - GND
    White - Data (positive)
    Green - Data (negative)

## Connections

    PI PP1    <-> ATMega16U2 [04] (USB keyboard Power )
    PI PP6    <-> ATMega16U2 [03] (USB keyboard GND   )
    PI PP22   <-> ATMega16U2 [29] (USB keyboard USB D+)
    PI PP23   <-> ATMega16U2 [30] (USB keyboard USB D-)
    PI GPIO5  <-> power button
    PI GPIO6  <-> power button
    PI GPIO13 <-> headphone jack
    PI GPIO18 <-> headphone jack

## Making the [ 200 OK ]

It all started with keyboard-layout-editor.com and setting up my development
environment.

#
           Terminal color code

       BG #173f4f | RGB  23  63  79
       FG #73ba25 | RGB 115 186  37
       HG #35b9ab | RGB  53 185 171
       A1 #00a489 | RGB   0 164 137
       A2 #6da741 | RGB 109 167  65
       A3 #21a4df | RGB  33 164 223


# Questions?

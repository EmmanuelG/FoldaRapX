; Configuration file for Duet WiFi (firmware version 2.03)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Sun Apr 19 2020 21:19:25 GMT+0200 (heure d’été d’Europe centrale)

; General preferences
G90                                      ; send absolute coordinates...
M83                                      ; ...but relative extruder moves
M550 P"FoldaRap X"                       ; set printer name

M669 K1                                  ; select CoreXY mode as per https://duet3d.dozuki.com/Wiki/ConfiguringRepRapFirmwareCoreXYPrinter

; Network
M552 S1                                  ; enable network
M586 P0 S1                               ; enable HTTP
M586 P1 S0                               ; disable FTP
M586 P2 S0                               ; disable Telnet

; Drives
M569 P0 S1                               ; physical drive 0 goes forwards
M569 P1 S1                               ; physical drive 1 goes forwards
M569 P2 S1                               ; physical drive 2 goes forwards
M569 P3 S1                               ; physical drive 3 goes forwards
M584 X0 Y1 Z2 E3                         ; set drive mapping
M350 X16 Y16 Z16 E16 I1                  ; configure micro-stepping with interpolation

M92 X160.00 Y160.00 Z1100.00 E405.00     ; set steps per mm
M566 X900.00 Y900.00 Z12.00 E120.00      ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z300.00 E1200.00  ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E250.00      ; set accelerations (mm/s^2)
M906 X1550 Y1550 Z1250 E800 I50          ; set motor currents (mA) and motor idle factor in per cent
M84 S0                                   ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                         ; set axis minima
M208 X146 Y210 Z152 S0                   ; set axis maxima

; Endstops
M574 X0 Y0 Z0 S0                         ; set active low and disabled endstops

; Z-Probe
M558 P0 H5 F120 T6000                    ; disable Z probe but set dive height, probe speed and travel speed
M557 X20:120 Y20:180 S20                 ; define mesh grid

; Heaters
M305 P0 T100000 B4138 R4700              ; set thermistor + ADC parameters for heater 0
M143 H0 S120                             ; set temperature limit for heater 0 to 120C
M305 P1 T100000 B4725 C7.060000e-8 R4700 ; set thermistor + ADC parameters for heater 1
M143 H1 S290                             ; set temperature limit for heater 1 to 290C

; Fans
M106 P0 S0 I0 F500 H-1                   ; set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T45                ; set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M563 P0 D0 H1 F0                         ; define tool 0
G10 P0 X0 Y0 Z0                          ; set tool 0 axis offsets
G10 P0 R0 S0                             ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

; Miscellaneous
T0                                       ; select first tool

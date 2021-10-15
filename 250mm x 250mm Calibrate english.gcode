;This G-Code is made to make bedlevelling easier and more exact
;Five points on the printbed will be approached at a height of 0.3mm
;This height has to be adjusted with the adjusting screws and a feeler gauge
;This code is written for a printbed size of 250x250mm.
;If your printbed is bigger or smaller, the "G1 X??? Y???" Code has to be adjusted

;***************************************************
;use the code on your own risk, be prepared 
;that the printer may behave not the way it should
;be ready to turn it off quickly
;***************************************************

M104 S200    ;Preheat the nozzle - adjust the temperature if required. S200 means 200 degrees Celsius
M190 S60     ;preheat the bed and wait for the temperature to be reached - adjust the temperature if required. S60 means 60 degrees Celsius
M105         ;show the temperatur on the display
M109 S200    ;wait for the nozzle to reach the temperature - adjust the temperature if required. S200 means 200 degrees Celsius
G1 Z5.0      ;Lift the nozzle 5mm for additional safety
G28          ;home all axis
;----this next four lines repeat nearly identical to approach all five points on the printbed----
G1 Z1.0      ;lift the nozzle 1mm to avoid scratching on the printbed
G1 X20 Y20   ;position the nozzle at X=20mm and Y=20mm
G1 Z0.3      ;lower the nozzle to 0.3mm
M0 Click to continue ;wait for user to click
;----next point----
G1 Z1.0
G1 X230 Y20  ;X=230 and Y=20 change the 230 if required
G1 Z0.3
M0 Click to continue
;----next point----
G1 Z1.0
G1 X230 Y230 ;X=230 and Y=230 change the 230 if required
G1 Z0.3
M0 Click to continue
;----next point----
G1 Z1.0
G1 X20 Y230  ;X=20 and Y=230 change the 230 if required
G1 Z0.3
M0 Click to continue
;----Check the Center----
G1 Z1.0
G1 X125 Y125 ;X=125 und Y=125 change the 125 if required
G1 Z0.3
M0 Click to end
;switch the heating off
M104 S0   ;turn nozzle off
M140 S0   ;turn printbed off
M0 Ready
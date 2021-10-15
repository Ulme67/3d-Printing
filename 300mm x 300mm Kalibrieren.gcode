;Mit diesem G-Code kann das Druckbett genauer kalibriert werden.
;Es werden fünf Punkte angefahren und die Düse jeweils auf 0,3mm Höhe gebracht.
;Dann kann mit einer Fühlerlehre jeweils der genaue Abstand eingestellt werden.
;Dieser Code ist für ein Druckbett von 300x300mm geschrieben worden.
;Bei kleineren Druckbetten muss der G1 Code zum Anfahren der einzelnen Punkte angepasst werden

;***************************************************************
;Achtung, Benutzung auf eigene Gefahr. Der Drucker kann gegen
;Anschläge knallen oder die Zahnriemen überspringen
;Bei der ersten Nutzung auf schnelles Ausschalten vorbereiten
;***************************************************************

M104 S200     ;Düse vorheizen
M190 S60     ;Bett vorheizen und warten, bis das Bett die Temperatur erreicht hat
M105         ;Temperatur auf Display anzeigen
M109 S200    ;Warte, bis die Düse aufgeheizt ist
G1 Z5.0      ;Zur Sicherheit die Düse etwas anheben
G28          ;Alle Achsen zum Nullpunkt fahren
;----ab hier wiederholt sich der Code, um die einzelnen Punkte anzufahren----
G1 Z1.0      ;Düse 1mm anheben, damit sie nicht über das Druckbett kratzt
G1 X30 Y30   ;Fahre die Düse auf X=30mm und Y=30mm
G1 Z0.3      ;Düse auf 0,3mm absenken
M0 Klicken -> Weiter ;Warten auf Tastendruck
;----nächster Punkt----
G1 Z1.0
G1 X270 Y30  ;X=270 und Y=30 Hier die 270mm ggf. anpassen
G1 Z0.3
M1 Klicken -> Weiter
;----nächster Punkt----
G1 Z1.0
G1 X270 Y270 ;X=270 und Y=270 Hier die 270mm ggf. anpassen
G1 Z0.3
M0 Klicken -> Weiter
;----nächster Punkt----
G1 Z1.0
G1 X30 Y270  ;X=30 und Y=270 Hier die 270mm ggf. anpassen
G1 Z0.3
M0 Klicken -> Weiter
;----Abschluss Mittelpunkt----
G1 Z1.0
G1 X150 Y150 ;X=150 und Y=150 Hier die 150mm ggf. anpassen
G1 Z0.3
M0 Klicken -> Ende
;Heizung abschalten
M104 S0   ;Düse aus
M140 S0   ;Druckbett aus
M0 Fertig
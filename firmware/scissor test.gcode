; moteur branché sur driver E de la Minitronics, configurée pour FoldaRap4
; avec M92 E280 (1/16 + 1.8° + 5:1)
; vu que 60mm = 20mm en vrai
; E devrait être de 840 pour être juste

; position départ haut à E120

G1 E180 F400 ; descente
G1 X1 F3000
G1 E240 F400 ; descente
G1 X2 F3000
G1 E300 F400 ; descente
G1 X3 F3000
G1 E360 F400 ; descente
G1 X4 F3000
G1 E420 F400 ; cible position basse mouvement descendant rapide
G1 X5 F3000
G1 E360 F200 ; premier mouvement de remontée lente
G1 X6 F3000
G1 E300 F300 ; suite mouvement de remontée rapide
G1 X7 F3000
G1 E240 F300 ; remontée
G1 X8 F3000
G1 E180 F300 ; remontée
G1 X9 F3000
G1 E120 F300 ; cible position haute mouvemente montant rapide

; fin programme
; moteur branch� sur driver E de la Minitronics, configur�e pour FoldaRap4
; avec M92 E280 (1/16 + 1.8� + 5:1)
; vu que 60mm = 20mm en vrai
; E devrait �tre de 840 pour �tre juste

; position d�part haut � E120

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
G1 E360 F200 ; premier mouvement de remont�e lente
G1 X6 F3000
G1 E300 F300 ; suite mouvement de remont�e rapide
G1 X7 F3000
G1 E240 F300 ; remont�e
G1 X8 F3000
G1 E180 F300 ; remont�e
G1 X9 F3000
G1 E120 F300 ; cible position haute mouvemente montant rapide

; fin programme
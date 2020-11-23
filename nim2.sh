#!/bin/bash
echo "*********************************************"
echo "*********************************************"
echo "*********************************************"
echo "************ Nim's game ************"
echo "*********************************************"
echo "***********WELCOME TO THE PARTY***************"
echo "*********************************************"
echo "*********************************************"


while true
do
    echo "Combien d'allumettes voulez-vous pour votre jeu (Ce nombre doit être un multiple de 4) ?"
    read  state
    if [ `expr $state % 4` -eq 0 ]
    then
        break
    else
        echo "Vous avez donné une mauvaise valeur, veuillez récommencer s'il vous plaît !"
    fi
done

numberIA=0

while [ $state -gt 0 ]
do
    # ============= Tour du joueur ===========
    echo -n "==== Le nombre d'allumettes disponible est de :"
	for i in `seq 1 $state`
        do 
        echo -n " | "
        done
echo ""
echo "Quel est le nombre d'allumettes que vous voulez prendre entre (1 à 3)"
read move
    if [ $move -lt 1 ] || [ $move -gt 3 ]
    then
        echo "=> Veuillez recommencer, votre chiffre n'est pas bon ! "
        continue
    fi
    let "state = state - move"
    # ============= Tour de l'IA =============
    echo -n "==== Le nombre d'allumettes disponible est de : $state"
	for i in `seq 1 $state`
        do 
        echo -n " | "
        done
echo ""
 	let " numberIA = 4 - move "
	echo " IA a prit $numberIA "
	let " state = state - $numberIA "
done
echo " FIN DU JEUX !!! VOUS AVEZ PERDU !!! "

echo "*************GAAAMEEE OOOVEEERRR***************"
echo "*************GAAAMEEE OOOVEEERRR***************"
echo "*************GAAAMEEE OOOVEEERRR***************"
echo "*************GAAAMEEE OOOVEEERRR***************"
echo "*************GAAAMEEE OOOVEEERRR***************"
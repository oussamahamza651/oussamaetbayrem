#! /bin/bash
. ./up.sh
. ./clean.sh
. ./search.sh
. ./verify.sh
. ./aide.sh

yad --title "SHELL PROJECT" --center --width=500 --height=250 --text "Bienvenue au projet shell " \
--- button=sortir:1 \
---  button=entrer:0 \
--  buttons-layout=center
choix=$?
if [[ $choix -eq 1 ]]; then 
cancel && exit 0
elif [[ $choix -eq 0 ]]; then
while :
do
yad --title "SHELL PROJECT" --center --width=500 --height=125 --text="Choisir votre commande:" \
--button=" -option -up:1" \
--button=" -option -clean:2" \
--button=" -option -search:3" \
--button=" -option -verify:4" \
--button="gtk-help:5" \
--button="gtk-quit:0" \


a=$?




read c2

echo 
if [[ $a -eq 1 ]]; 
then
    up
elif [[ $a -eq 2 ]]; then
   clean 
elif [[ $a -eq 3 ]]; then
         search
elif [[ $a -eq 4 ]]; then
         verify
elif [[ $a -eq 5 ]]; then
         yad --title "SHELL PROJECT" --center --width=600 --height=100 --text='
 option ==> -h ou -help pour vous aider 
 option ==> -up pour vous faire une mise à jour 
 option ==> -clean pour vider le cache des gestionnaires des packages 
 option ==> -search pour rechercher des packages en utilisant  l internet 
 option ==> -verify pour verifier q un packages est disponible dans un local recommandés'
else
cancel && exit 0

fi
done
fi

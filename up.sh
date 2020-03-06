#! /bin/bash
up(){
    sudo apt-get update >> historique.txt
	sudo apt full-upgrade >> historique.txt
}


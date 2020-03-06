#! /bin/bash
verify(){
dpkg -l | grep $c2
	dpkg -l | grep $c2 >> historique.txt
}

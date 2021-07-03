#!/bin/bash
# mindket fajl elso sorat beleteszem egy-egy temporalis fajlba
cat $1 | head -1 > tmp2.txt
cat $2 | head -1 > tmp1.txt

# az elozoeknek megfeleloen le is kerem az elso sor kivetelevel az osszes tobbi sort, 
# mindket fajl eseteben, majd hozzafuzom a mar adott temoralis fajlaimhoz, megcserelve
cat $1 | tail -n +2 >> tmp1.txt
cat $2 | tail -n +2 >> tmp2.txt

# mar csak at kell tennem a temporalis fajlokban eloallt eredmenyt a kiindulasi fajljaimba
cat tmp1.txt > $1
cat tmp2.txt > $2

# miutan eloallt a kert egy es ketto output fajl, torlom a temporalis fajlokat
rm tmp1.txt tmp2.txt
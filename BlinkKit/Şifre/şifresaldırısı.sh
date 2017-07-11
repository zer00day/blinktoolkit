#!/bin/sh

mavi='\033[94m'
yesil='\033[92m'
turuncu='\033[93m'

					



echo ""
secenek=
until [ "$secenek" = "0" ]; do
    echo ""
    echo "$yesil PROGRAM MENUSU ALT TARAFTAKİ GİBİDİR"
    echo ""
    echo "$turuncu 1 - Crunch"
    echo "$turuncu 2 - Ncrack"
    echo "$turuncu 3 - Find My Hash"
    echo "$turuncu 0 - Çıkış"
    echo ""
    echo -n "$isim Seçim Gir Lütfen > "
    read secenek
    echo ""
    case $secenek in
        1 ) crunch -h  ;;
        2 ) ncrack -h ;;
        3 ) findmyhash -h ;;
        0 ) exit ;;
        * ) echo "Lütfen Seçim Gir"
    esac
done

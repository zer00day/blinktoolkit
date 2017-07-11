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
    echo "$turuncu 1 - Uniscan"
    echo "$turuncu 2 - Nikto"
    echo "$turuncu 3 - Golismero"
	echo "$turuncu 4 - WPScan"
	echo "$turuncu 5 - Arachni"
	echo "$turuncu 6 - JoomScan"
    echo "$turuncu 0 - Çıkış"
    echo ""
    echo -n "$isim Seçim Gir Lütfen > "
    read secenek
    echo ""
    case $secenek in
        1 ) uniscan ;;
        2 ) nikto -h ;;
        3 ) golismero -h  ;;
		4 ) wpscan -h ;;      
		5 ) arachni -h ;;  
		6 ) joomscan -h ;;
		0 ) exit ;;
        * ) echo "Lütfen Seçim Gir"
    esac
done

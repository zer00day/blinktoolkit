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
    echo "$turuncu 1 - Setoolkit"
    echo "$turuncu 2 - Wifite"
    echo "$turuncu 3 - Wireshark"
    echo "$turuncu 0 - Çıkış"
    echo ""
    echo -n "$isim Seçim Gir Lütfen > "
    read secenek
    echo ""
    case $secenek in
        1 ) setoolkit ;;
        2 ) wifite ;;
        3 ) wireshark ;;
        0 ) exit ;;
        * ) echo "Lütfen Seçim Gir"
    esac
done


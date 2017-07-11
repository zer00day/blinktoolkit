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
    echo "$turuncu 1 - Maltego"
    echo "$turuncu 2 - Nmap"
    echo "$turuncu 3 - Zenmap"
    echo "$turuncu 4 - Dns Enum"
    echo "$turuncu 5 - Wafw00f"
    echo "$turuncu 6 - Ncat"
    echo "$turuncu 7 - Hping3"
    echo "$turuncu 0 - Çıkış"
    echo ""
    echo -n "$isim Seçim Gir Lütfen > "
    read secenek
    echo ""
    case $secenek in
        1 ) maltego ;;
        2 ) nmap -h ;;
        3 ) zenmap ;;
        4 ) dnsenum -h ;;
        5 ) wafw00f -h ;;
        6 ) ncat -h ;;
        7 ) hping3 -h ;;
        0 ) exit ;;
        * ) echo "Lütfen Seçim Gir"
    esac
done

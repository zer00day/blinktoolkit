#!/bin/sh
mavi='\033[94m'
yesil='\033[92m'
turuncu='\033[93m'
echo """$yesil
	_____  _         _     __      _
	| __ )| (_)_ __ | | __ | |/ (_) |_ 
	|  _ \| | | '_ \| |/ / | ' /| | __|
	| |_) | | | | | |   <  | . \| | |_ 
	|____/|_|_|_| |_|_|\_\ |_|\_\_|\__|

	$mavi [+] Blink Cursor 
	$mavi [+] Pentesterlar ve Yazılım Geliştiricileri
	$mavi [+] blinkcursor.org
	
	"""
echo "$yesil PROGRAMI ROOT YETKİSİYLE AÇMANIZ ÖNERİLİR!"
echo ""
echo -n "$yesil İsminiz > "
read isim
echo ""
secenek=
until [ "$secenek" = "0" ]; do
    echo ""
    echo "$yesil $isim PROGRAM MENUSU ALT TARAFTAKİ GİBİDİR"
    echo ""
    echo "$turuncu 1 - Network Saldırısı"
    echo "$turuncu 2 - Açık Tarama"
    echo "$turuncu 3 - Şifre Kırma Saldırısı"
    echo "$turuncu 4 - Web ve Veri Saldırısı"
    echo "$turuncu 5 - Bilgi Toplama"
    echo "$turuncu 6 - Parrot Toolları İndir"
	echo "$turuncu 0 - Çıkış"    
	echo ""
    echo -n "$isim Seçim Gir Lütfen > "
    read secenek
    echo ""
    case $secenek in
        1 ) clear
			cd Ağ
		    sh ağ.sh ;;
        2 ) clear
			cd Açık
			sh açıktara.sh ;;
        3 ) clear
			cd Şifre
			sh şifresaldırısı.sh ;;
        4 ) clear
			cd Web
		    sh exploitdb.sh ;;
        5 ) clear
			cd Bilgi
		    sh bilgitopla.sh  ;;
		6 ) apt-get install parrot-tools ;;
        0 ) exit ;;
        * ) echo "Lütfen Seçim Gir $isim"
    esac
done


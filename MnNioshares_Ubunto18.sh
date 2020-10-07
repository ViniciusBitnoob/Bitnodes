#!/bin/bash

cd
echo " BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo " CONHEÇA NOSSO CANAL EM WWW.YOUTUBE.COM/BITNOOB"
sleep 3
echo " Será iniciado a Instalação/Montagem do Masternode de Nioshare p/ Linux Ubunto 18.04"
sleep 3
echo "   >>>   Versão da Wallet v1.0.0.1   <<<"
sleep 3
echo " Atualizando e Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt install rar
add-apt-repository  -y  ppa:bitcoin/bitcoin
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt install make -y
apt-get install -y unzip
apt-get install -y nano htop git
apt-get install -y software-properties-common
apt-get install -y build-essential libtool autotools-dev pkg-config libssl-dev
apt-get install -y libboost-all-dev
apt-get install -y libevent-dev
apt-get install -y libminiupnpc-dev
apt-get install -y autoconf
apt-get install -y automake unzip
apt-get install -y libdb4.8-dev libdb4.8++-dev
apt-get install -y gcc-4.9
apt-get install -y libstdc++6
apt-get install aptitude -y
apt-get install fail2ban -y
apt-get install pwgen
apt-get install libzmq3-dev


echo " Limpando arquivos de instalações anteriores..."
sleep 3
cd
~/nio/./nioshares-cli stop
rm -r nio
rm -r .nioshares


echo " Instalando Node..."
sleep 3
cd
mkdir nio
cd nio
wget https://github.com/nioshares/nioshares-coin/releases/download/V1.0.0.1/nioshares-daemon-linux.tar.gz
wget https://github.com/nioshares/nioshares-coin/releases/download/V1.0.0.1/nioshares-qt-linux.tar.gz
tar -xzvf nioshares-daemon-linux.tar.gz
tar -xzvf nioshares-qt-linux.tar.gz
rm -r nioshares-daemon-linux.tar.gz
rm -r nioshares-qt-linux.tar.gz
rm -r nioshares-qt
rm -r nioshares-tx
~/nio/./niosharesd &
sleep 20
~/nio/./nioshares-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.nioshares/nioshares.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.nioshares/nioshares.conf
echo "masternodeprivkey="$genkey >> ~/.nioshares/nioshares.conf
echo "rpcallowip=127.0.0.1" >> ~/.nioshares/nioshares.conf
echo "listen=1" >> ~/.nioshares/nioshares.conf
echo "server=1" >> ~/.nioshares/nioshares.conf
echo "daemon=1" >> ~/.nioshares/nioshares.conf
echo "masternode=1" >> ~/.nioshares/nioshares.conf
echo "masternodeaddr="$ipvps:15252 >> ~/.nioshares/nioshares.conf
echo "maxconnections=36" >> ~/.nioshares/nioshares.conf
echo "logtimestamps=1" >> ~/.nioshares/nioshares.conf
echo "port=21392" >> ~/.nioshares/nioshares.conf
echo "addnode=62.171.189.163" >> ~/.nioshares/nioshares.conf
echo "addnode=186.118.237.242" >> ~/.nioshares/nioshares.conf
echo "addnode=173.212.251.149" >> ~/.nioshares/nioshares.conf
echo "addnode=62.171.155.87" >> ~/.nioshares/nioshares.conf
echo "addnode=144.91.87.7" >> ~/.nioshares/nioshares.conf
echo "addnode=173.249.7.25" >> ~/.nioshares/nioshares.conf
echo "addnode=164.68.115.132" >> ~/.nioshares/nioshares.conf
echo "addnode=62.171.146.218" >> ~/.nioshares/nioshares.conf
echo "addnode=86.57.193.186" >> ~/.nioshares/nioshares.conf
echo "addnode=187.15.233.218" >> ~/.nioshares/nioshares.conf
echo "addnode=72.19.15.94" >> ~/.nioshares/nioshares.conf
echo "addnode=72.19.15.172" >> ~/.nioshares/nioshares.conf
echo "addnode=144.91.110.105" >> ~/.nioshares/nioshares.conf
echo "addnode=207.180.249.77" >> ~/.nioshares/nioshares.conf
echo "addnode=207.180.246.231" >> ~/.nioshares/nioshares.conf
echo "addnode=136.144.171.201" >> ~/.nioshares/nioshares.conf



echo " Iniciando Masternode..."
sleep 3
~/nio/./niosharesd &
sleep 30
echo "Qual o rótulo da sua Wallet do masternode?"
read alias
echo "Qual txid do seu Masternode?"
read txid
echo "Qual o output do texid? 0 ou 1 ?"
read output
echo "   "
echo "                             >>>>> SUA LINHA DE CONFIGURAÇÃO DE MASTERNODE É: <<<<<"
echo $alias $ipvps:21392 $genkey $txid $output
sleep 5
echo "   "
echo "                        >>>>> COPIE E COLE-A NO SEU ARQUIVO DE CONFIGURAÇÃO DE MASTERNODE. <<<<<"
echo "   "
echo "      >>>>> USE O COMANDO A BAIXO AQUI NA VPS, SE O PRIMEIRO RESULTADO FOR 'true', SIGNIFICA QUE JA PODE INICIAR NO WINDOWNS. <<<<<"
echo " >>>>> SE NÃO FOR 'true', USE O COMANDO DE TEMPOS EM TEMPOR ATÉ CONFIRMAR A INFORMAÇÃO, APOS ISSO, INICIE O MASTERNODE NO DESKTOP. <<<<<"
echo "   "
echo "~/nio/./nioshares-cli mnsync status"
echo "   "
echo "   "
echo "           >>>>> USE O COMANDO A BAIXO PARA INICIAR NO MASTERNODE NA DESKTOP WALLET! <<<<<"
echo "   "
echo " startmasternode alias false (nomedoalias)"
echo "   "
echo " Exemplo: startmasternode alias false mn1"
echo "   "
echo "      >>>>>SE A REPOSTA DO COMANDO NO CONSOLE DA SUA WALLET FOR 'Successfully', SIGNIFICA QUE O START FOI FEITO. <<<<<"
echo " >>>>> USE O COMANDO A BAIXO, AQUI NA VPS PARA CONFIRMAR, SE TE RETORNAR ALGO COMO 'Successfully' ESTÁ FUNCIONANDO!!! <<<<<  "
echo "   "
echo " ~/nio/./nioshares-cli getmasternodestatus"
echo "   "
echo "     >>>> TE AJUDEI???? NOS AJUDE TAMBEM, FAÇA UMA DOAÇÃO, ASSIM NOS MOTIVA A ATUALIZAR E MELHORAR OS SCRIPTS!!!<<<<"
echo "                          >>>>    WALLET NIO:  NfJvmMLBf8hnzwAr5odG3D7o2nyK84NRbW    <<<<"
echo "   "
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
cd
rm -r MnNioshares_Ubunto18.sh

#!/bin/bash

cd
echo " BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo " CONHEÇA NOSSO CANAL EM WWW.YOUTUBE.COM/BITNOOB"
sleep 3
echo " Será iniciado a Instalação/Montagem do Masternode de BASECOIN p/ Linux Ubunto 18.04"
sleep 3
echo "   >>>   Versão da Wallet v1.0.0.0   <<<"
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
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3 libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-test-dev libboost-thread-dev libboost-all-dev libboost-program-options-dev
sudo apt-get install libminiupnpc-dev libzmq3-dev libprotobuf-dev protobuf-compiler unzip software-properties-common
sudo add-apt-repository ppa: bitcoin / bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8 ++ - dev

echo " Limpando arquivos de instalações anteriores..."
sleep 3
cd
~/bab/./basecoin-cli stop
rm -r bab
rm -r .basecoin


echo " Instalando Node..."
sleep 3
cd
mkdir bab
cd bab
wget https://github.com/Basecoin-BAB/Basecoin-Core/releases/download/V1.0.0.0/basecoin-daemon-linux.tar.gz
wget https://github.com/Basecoin-BAB/Basecoin-Core/releases/download/V1.0.0.0/basecoin-qt-linux.tar.gz
tar -xzvf basecoin-daemon-linux.tar.gz
tar -xzvf basecoin-qt-linux.tar.gz
rm -r basecoin-daemon-linux.tar.gz
rm -r basecoin-qt-linux.tar.gz
rm -r basecoin-qt
rm -r basecoin-tx
~/bab/./basecoind &
sleep 20
~/bab/./basecoin-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.basecoin/basecoin.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.basecoin/basecoin.conf
echo "masternodeprivkey="$genkey >> ~/.basecoin/basecoin.conf
echo "rpcallowip=127.0.0.1" >> ~/.basecoin/basecoin.conf
echo "listen=1" >> ~/.basecoin/basecoin.conf
echo "server=1" >> ~/.basecoin/basecoin.conf
echo "daemon=1" >> ~/.basecoin/basecoin.conf
echo "masternode=1" >> ~/.basecoin/basecoin.conf
echo "masternodeaddr="$ipvps:22632 >> ~/.basecoin/basecoin.conff
echo "maxconnections=36" >> ~/.basecoin/basecoin.conf
echo "logtimestamps=1" >> ~/.basecoin/basecoin.conf
echo "port=22632" >> ~/.basecoin/basecoin.conf
echo "addnode=72.19.15.173" >> ~/.basecoin/basecoin.conf
echo "addnode=173.249.39.84" >> ~/.basecoin/basecoin.conf
echo "addnode=173.249.34.236" >> ~/.basecoin/basecoin.conf
echo "addnode=144.91.87.7" >> ~/.basecoin/basecoin.conf
echo "addnode=136.144.171.201" >> ~/.basecoin/basecoin.conf
echo "addnode=207.180.245.239" >> ~/.basecoin/basecoin.conf
echo "addnode=5.189.162.110" >> ~/.basecoin/basecoin.conf
echo "addnode=72.19.15.174" >> ~/.basecoin/basecoin.conf
echo "addnode=187.14.249.145" >> ~/.basecoin/basecoin.conf
echo "addnode=177.66.147.35" >> ~/.basecoin/basecoin.conf
echo "addnode=144.91.75.15" >> ~/.basecoin/basecoin.conf
echo "addnode=191.30.221.134" >> ~/.basecoin/basecoin.conf
echo "addnode=86.57.193.186" >> ~/.basecoin/basecoin.conf
echo "addnode=72.19.15.173" >> ~/.basecoin/basecoin.conf
echo "addnode=72.19.15.95" >> ~/.basecoin/basecoin.conf
echo "addnode=179.199.118.147" >> ~/.basecoin/basecoin.conf
echo "addnode=45.169.28.19" >> ~/.basecoin/basecoin.conf
echo "addnode=187.24.231.218" >> ~/.basecoin/basecoin.conf
echo "addnode=73.60.248.106" >> ~/.basecoin/basecoin.conf
echo "addnode=72.19.15.94" >> ~/.basecoin/basecoin.conf
echo "addnode=170.254.144.247" >> ~/.basecoin/basecoin.conf
echo "whitelist=173.249.39.84" >> ~/.basecoin/basecoin.conf
echo "whitelist=173.249.34.236" >> ~/.basecoin/basecoin.conf
echo "whitelist=144.91.87.7" >> ~/.basecoin/basecoin.conf



echo " Iniciando Masternode..."
sleep 3
~/bab/./basecoind &
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
echo " ~/bab/./basecoin-cli mnsync status"
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
echo " ~/bab/./basecoin-cli getmasternodestatus"
echo "   "
echo "     >>>> TE AJUDEI???? NOS AJUDE TAMBEM, FAÇA UMA DOAÇÃO, ASSIM NOS MOTIVA A ATUALIZAR E MELHORAR OS SCRIPTS!!!<<<<"
echo "                          >>>>    WALLET BAB:  BSjwuKcwmTuK6Nj77g67PuYMPhKa7RodB2    <<<<"
echo "   "
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
cd
rm -r MnBasecoin_Ubunto18.sh

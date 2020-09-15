#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo " CONHEÇA NOSSO CANAL EM WWW.YOUTUBE.COM/BITNOOB"
sleep 3
echo "Será iniciado a Instalação/Montagem do Masternode de Nioshare p/ Linux Ubunto 18.04"
sleep 3
echo "Atualizando e Instalando Pré-Requisitos..."
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


echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r nio
rm -r .nio


echo "Instalando Node..."
sleep 3
cd
mkdir peps
cd peps
wget https://github.com/PEPS-Project/peps/releases/download/v2.3-rev2/peps-daemon.zip
unzip peps-daemon.zip
./pepsd &
sleep 20
./peps-cli stop

ipvps=$(curl -s4 icanhazip.com)

echo "Seu ip é:"
echo $ipvps
echo "Qual sua Genkey ?"
read genkey

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.peps/peps.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.peps/peps.conf
echo "rpcport=16262" >> ~/.peps/peps.conf
echo "externalip="$ipvps >> ~/.peps/peps.conf
echo "masternodeprivkey="$genkey >> ~/.peps/peps.conf
echo "rpcallowip=127.0.0.1" >> ~/.peps/peps.conf
echo "listen=1" >> ~/.peps/peps.conf
echo "server=1" >> ~/.peps/peps.conf
echo "daemon=1" >> ~/.peps/peps.conf
echo "masternode=1" >> ~/.peps/peps.conf
echo "bind="$ipvps >> ~/.peps/peps.conf
echo "masternodeaddr="$ipvps:15252 >> ~/.peps/peps.conf
echo "logtimestamps=1" >> ~/.peps/peps.conf
echo "port=15252" >> ~/.peps/peps.conf


echo "Iniciando Masternode..."
sleep 3
cd 
cd peps
./pepsd &
sleep 30
./peps-cli mnsync status
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "cd"
echo "cd peps"
echo "./peps-cli mnsync status"
echo "Faça isso de tempos em tempos até que note que ja está em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode"
echo "startmasternode alias false (nomedoalias)"
echo "AGRADECIMENTOS A DIEGO NEVES DO SITE https://staking.world E A MATHEUS BACH, SEM ELES NAO SERIA POSSIVEL ESTE SCRYPT."
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
mv ~/Pepscoin.sh ~/peps

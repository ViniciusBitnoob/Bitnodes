#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo " CONHEÇA NOSSO CANAL EM WWW.YOUTUBE.COM/BITNOOB"
sleep 3
echo "Será iniciado a Instalação/Montagem do Masternode de Nioshare p/ Linux Ubunto 18.04"
sleep 3
echo "   >>>   Versão da Wallet v1.0.0.1   <<<"
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
rm -r .nioshares


echo "Instalando Node..."
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

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/..nioshares/nioshares.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/..nioshares/nioshares.conf
echo "externalip="$ipvps >> ~/..nioshares/nioshares.conf
echo "masternodeprivkey="$genkey >> ~/..nioshares/nioshares.conf
echo "rpcallowip=127.0.0.1" >> ~/..nioshares/nioshares.conf
echo "listen=1" >> ~/..nioshares/nioshares.conf
echo "server=1" >> ~/..nioshares/nioshares.conf
echo "daemon=1" >> ~/..nioshares/nioshares.conf
echo "masternode=1" >> ~/..nioshares/nioshares.conf
echo "bind="$ipvps >> ~/..nioshares/nioshares.conf
echo "masternodeaddr="$ipvps:15252 >> ~/..nioshares/nioshares.conff
echo "logtimestamps=1" >> ~/..nioshares/nioshares.conf
echo "port=21392" >> ~/..nioshares/nioshares.conf


echo "Iniciando Masternode..."
sleep 3
~/nio/./niosharesd &
sleep 30
~/nio/./nioshares-cli mnsync status
sleep 5
echo "Qual o rótulo da sua Wallet do masternode?"
read alias
echo "Qual txid do seu Masternode?"
read txid
echo "Qual o output do texid? 0 ou 1 ?"
read output
echo "   "
echo "Sua linha de configuração do masternode é:"
echo $alias $ipvps:21392 $genkey $txid $output
sleep 5
echo "   "
echo "Copie e cole dentro do seu arquivo masternode.conf"
echo "   "
echo "Se os parametros foram true e a transação na wallet do seu computador ja estiver confirmada, pode iniciar o Masternode"
echo "Caso não for true, aguarde mais alguns minutos e use os comandos"
echo "~/nio/./nioshares-cli mnsync status"
echo "Faça isso de tempos em tempos até que ja esteja em true para iniciar o masternode na wallet em seu computador"
echo "Deverá usar o comando a baixo no console de sua wallet windows para dar start no masternode, mas lembre-se de destravar sua wallet antes."
echo "startmasternode alias false (nomedoalias)"
echo "Exemplo: startmasternode alias false mn1"
echo "Se o status da resposta for: Successfully ou algo relacionado, o masternode iniciou e é so aguardar."
echo "   "
echo ">>>> TE AJUDEI???? NOS AJUDE TAMBEM, FAÇA UMA DOAÇÃO, ASSIM NOS MOTIVA A ATUALIZAR E MELHORAR OS SCRIPTS!!!<<<<"
echo ">>>>    WALLET NIO:  NfJvmMLBf8hnzwAr5odG3D7o2nyK84NRbW    <<<<"
echo "   "
echo "Att. Vinicius Ferreiro - Canal Bitnoob"
cd
rm -r MnNioshares_Ubunto18.sh

#!/bin/bash

cd
echo "BEM VINDO AOS SCRYPTS DO CANAL BITNOOB!!!"
sleep 3 
echo "Será iniciado a Instalação/Montagem do Masternode de pepscoin v1.0"
sleep 3
echo "Instalando Pré-Requisitos..."
sleep 3 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install unzip nano -y
sudo apt-get install git
sudo apt install rar


echo "Limpando arquivos de instalações anteriores..."
sleep 3
cd
rm -r peps
rm -r .peps


echo "Instalando Node..."
sleep 3
cd
mkdir peps
cd peps
wget https://github.com/PEPS-Project/peps/releases/download/v2.3.2/peps-v2.3.2-daemon-ubuntu-16.zip
unzip peps-v2.3.2-daemon-ubuntu-16.zip
chmod +rwx pepsd
chmod +rwx peps-cli
rm -r peps-v2.3.2-daemon-ubuntu-16.zip
./pepsd -listen=0
sleep 20
./peps-cli stop
cd

echo "Baixando Bootstrap..."
sleep 3
cd
git clone https://github.com/circulosmeos/gdown.pl.git
cd .peps
~/gdown.pl/gdown.pl https://drive.google.com/open?id=1HMLNRtBaZzN9QCgBXXkSxJcPeqizRkqF peps.zip
unzip peps.zip
rm -r peps.zip
cd

echo "Seu ipv6 é:"
read ipvps
echo "Qual sua Genkey ?"
read genkey
echo "Digite uma rpcport!"
read portarpc

echo "rpcuser=user"`shuf -i 100000-10000000 -n 1` >> ~/.peps/peps.conf
echo "rpcpassword=pass"`shuf -i 100000-10000000 -n 1` >> ~/.peps/peps.conf
echo "rpcport="$portarpc >> ~/.peps/peps.conf
echo "externalip="$ipvps >> ~/.peps/peps.conf
echo "masternodeprivkey="$genkey >> ~/.peps/peps.conf
echo "rpcallowip=127.0.0.1" >> ~/.peps/peps.conf
echo "listen=1" >> ~/.peps/peps.conf
echo "server=1" >> ~/.peps/peps.conf
echo "daemon=1" >> ~/.peps/peps.conf
echo "masternode=1" >> ~/.peps/peps.conf
echo "bind="$ipvps >> ~/.peps/peps.conf
echo "masternodeaddr="$ipvps >> ~/.peps/peps.conf
echo "logtimestamps=1" >> ~/.peps/peps.conf
echo "port=15252" >> ~/.peps/peps.conf
echo "mnconflock=1" >> ~/.peps/peps.conf
echo "addnode=95.164.8.207" >> ~/.peps/peps.conf
echo "addnode=45.76.124.236" >> ~/.peps/peps.conf
echo "addnode=149.28.158.224" >> ~/.peps/peps.conf
echo "addnode=149.28.158.213" >> ~/.peps/peps.conf
echo "addnode=149.28.146.115" >> ~/.peps/peps.conf

echo " x
addnode=116.203.57.114:60192
addnode=138.201.251.147:35492
addnode=144.76.196.102:32824
addnode=144.76.196.102:45500
addnode=144.76.196.102:51436
addnode=144.76.196.102:53092
addnode=144.91.110.105:33176
addnode=144.91.110.105:45928
addnode=144.91.110.105:57190
addnode=144.91.115.166:38828
addnode=144.91.115.166:39840
addnode=144.91.115.166:40098
addnode=144.91.115.166:41346
addnode=144.91.115.166:41864
addnode=144.91.115.166:42782
addnode=144.91.115.166:43158
addnode=144.91.115.166:46832
addnode=144.91.115.166:47932
addnode=144.91.115.166:52046
addnode=144.91.115.166:57812
addnode=144.91.75.15:45782
addnode=144.91.75.15:47338
addnode=149.248.61.19:40474
addnode=149.248.61.19:44544
addnode=149.248.61.19:57456
addnode=149.28.158.213:15252
addnode=164.68.112.102:37268
addnode=164.68.112.102:47108
addnode=164.68.112.102:48164
addnode=164.68.112.195:37030
addnode=164.68.112.195:38140
addnode=164.68.112.195:38564
addnode=164.68.112.195:38704
addnode=164.68.112.195:46310
addnode=167.86.101.163:60820
addnode=167.86.83.202:15252
addnode=167.86.83.202:43946
addnode=195.154.114.177:44234
addnode=195.154.114.177:45850
addnode=198.211.110.201:41534
addnode=207.180.208.212:40492
addnode=207.180.208.212:40516
addnode=207.180.208.212:40536
addnode=207.180.208.212:40542
addnode=207.180.208.212:40614
addnode=207.180.208.212:40668
addnode=207.180.208.212:41658
addnode=207.180.208.212:41740
addnode=207.180.208.212:41866
addnode=207.180.208.212:41882
addnode=207.180.208.212:41936
addnode=207.180.208.212:42112
addnode=207.180.208.212:42342
addnode=207.180.208.212:42502
addnode=207.180.208.212:42558
addnode=207.180.208.212:42616
addnode=207.180.208.212:42858
addnode=207.180.208.212:43374
addnode=207.180.208.212:43404
addnode=207.180.208.212:43536
addnode=207.180.208.212:43624
addnode=207.180.208.212:44826
addnode=207.180.208.212:45442
addnode=207.180.208.212:46036
addnode=207.180.208.212:46114
addnode=207.180.208.212:53444
addnode=207.180.208.212:58088
addnode=207.180.208.212:59696
addnode=207.180.208.212:60052
addnode=207.180.208.212:60230
addnode=207.180.215.153:52284
addnode=213.136.83.234:37438
addnode=213.136.83.234:39348
addnode=3.22.110.103:15252
addnode=34.67.232.179:15252
addnode=35.223.165.47:15252
addnode=35.239.89.190:15252
addnode=45.76.124.236:15252
addnode=5.189.162.110:34296
addnode=5.189.162.110:52120
addnode=5.189.162.110:52562
addnode=5.189.162.110:52778
addnode=5.189.162.110:52988
addnode=5.189.162.110:54160
addnode=5.189.162.110:54454
addnode=5.189.162.110:54810
addnode=5.189.162.110:55592
addnode=51.15.123.105:59898
addnode=51.15.96.236:15252
addnode=51.158.169.117:36958
addnode=51.158.189.7:39230
addnode=62.171.131.221:15252
addnode=62.171.187.93:38324
addnode=62.171.187.93:39060
addnode=62.171.187.93:56902
addnode=72.19.15.172:39610
addnode=72.19.15.172:54992
addnode=72.19.15.173:52860
addnode=72.19.15.93:54128
addnode=72.19.15.95:44700
addnode=80.210.127.1:43538
addnode=80.210.127.1:46456
addnode=80.210.127.4:15252
addnode=80.211.168.141:36782
addnode=80.211.175.135:59174
addnode=80.211.32.190:41824
addnode=80.211.42.125:38044
addnode=80.240.26.72:45954
addnode=80.240.26.72:48478
addnode=80.240.26.72:58760
addnode=80.240.26.72:58840
addnode=80.241.212.178:41908
addnode=80.241.212.178:48564
addnode=80.241.212.178:59356
addnode=80.241.212.178:59620
addnode=80.241.212.178:59776
addnode=80.241.212.178:59862
addnode=85.94.179.41:15252
addnode=95.164.8.207:15252
addnode=95.216.20.59:42550
addnode=95.216.243.42:36266
addnode=95.216.243.42:55234
addnode=95.216.243.42:55402
addnode=95.216.68.131:56494
addnode=95.217.32.233:32906
addnode=95.217.32.233:59328
" >> ~/.peps/peps.conf

echo "Iniciando Masternode..."
sleep 3
cd 
rm -r pepsipv6.sh
cd peps
./pepsd -listen=0
sleep 100
./peps-cli getinfo
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

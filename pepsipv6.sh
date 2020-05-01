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
~/gdown.pl/gdown.pl https://drive.google.com/file/d/1-g28WU7Wq_iN7XCYF5QC_4RX0CgVRqmp/view?usp=sharing peps.zip
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

echo "
addnode=116.203.21.45:48184
addnode=121.186.37.112:15252
addnode=138.201.251.147:35492
addnode=140.82.19.61:15252
addnode=144.76.196.102:32824
addnode=144.76.196.102:36140
addnode=144.91.110.105:34082
addnode=144.91.110.105:39116
addnode=144.91.110.105:45260
addnode=144.91.110.105:49646
addnode=144.91.110.105:54394
addnode=144.91.110.105:58346
addnode=144.91.110.57:40618
addnode=144.91.110.57:44452
addnode=144.91.115.166:48014
addnode=144.91.75.15:44598
addnode=144.91.75.15:45782
addnode=144.91.75.15:47338
addnode=144.91.75.15:52930
addnode=149.248.61.19:58610
addnode=149.248.61.19:60404
addnode=164.68.112.102:37268
addnode=164.68.112.102:41852
addnode=164.68.112.102:47108
addnode=164.68.112.102:48164
addnode=164.68.112.102:50702
addnode=164.68.112.195:37030
addnode=164.68.112.195:38140
addnode=164.68.112.195:38564
addnode=164.68.112.195:38704
addnode=164.68.112.195:46310
addnode=164.68.112.195:48640
addnode=164.68.112.195:49378
addnode=164.68.112.195:52994
addnode=164.68.112.195:56352
addnode=167.86.101.163:60820
addnode=167.86.83.202:43946
addnode=195.154.114.177:44234
addnode=195.154.114.177:45850
addnode=207.180.208.212:36592
addnode=207.180.208.212:36944
addnode=207.180.208.212:40492
addnode=207.180.208.212:40516
addnode=207.180.208.212:40542
addnode=207.180.208.212:40614
addnode=207.180.208.212:40668
addnode=207.180.208.212:41658
addnode=207.180.208.212:41740
addnode=207.180.208.212:41866
addnode=207.180.208.212:41882
addnode=207.180.208.212:41936
addnode=207.180.208.212:42342
addnode=207.180.208.212:42502
addnode=207.180.208.212:42558
addnode=207.180.208.212:42616
addnode=207.180.208.212:42858
addnode=207.180.208.212:43374
addnode=207.180.208.212:43404
addnode=207.180.208.212:43536
addnode=207.180.208.212:44826
addnode=207.180.208.212:45442
addnode=207.180.208.212:46036
addnode=207.180.208.212:46114
addnode=207.180.208.212:58088
addnode=207.180.208.212:59696
addnode=207.180.208.212:60052
addnode=207.180.208.212:60230
addnode=207.180.215.153:52284
addnode=207.180.245.239:35708
addnode=213.136.83.234:37438
addnode=213.136.83.234:39348
addnode=213.136.83.234:43220
addnode=217.61.125.197:15252
addnode=3.22.110.103:15252
addnode=34.67.232.179:15252
addnode=34.69.7.149:15252
addnode=35.223.165.47:15252
addnode=35.239.89.190:15252
addnode=45.76.124.236:15252
addnode=5.189.162.110:52120
addnode=5.189.162.110:52562
addnode=5.189.162.110:52778
addnode=5.189.162.110:52988
addnode=5.189.162.110:54160
addnode=5.189.162.110:54454
addnode=5.189.162.110:54810
addnode=51.15.123.105:59898
addnode=51.15.60.32:36382
addnode=51.15.86.226:42446
addnode=51.158.169.117:36958
addnode=51.158.189.7:39230
addnode=62.171.187.93:38324
addnode=62.171.187.93:38562
addnode=62.171.187.93:38566
addnode=62.171.187.93:39060
addnode=62.171.187.93:51004
addnode=62.171.187.93:56156
addnode=62.171.187.93:56902
addnode=62.171.187.93:57050
addnode=62.171.187.93:59960
addnode=62.171.189.163:51448
addnode=72.19.15.172:45588
addnode=72.19.15.173:34156
addnode=72.19.15.93:52600
addnode=72.19.15.95:15252
addnode=80.210.127.1:43538
addnode=80.210.127.1:46456
addnode=80.210.127.4:15252
addnode=80.211.168.141:36782
addnode=80.211.32.190:41824
addnode=80.211.42.125:38044
addnode=80.240.26.72:45954
addnode=80.240.26.72:48478
addnode=80.240.26.72:58760
addnode=80.240.26.72:58840
addnode=80.241.212.178:33792
addnode=80.241.212.178:41908
addnode=80.241.212.178:48564
addnode=80.241.212.178:59356
addnode=80.241.212.178:59862
addnode=85.94.179.41:15252
addnode=94.156.35.117:15252
addnode=95.164.8.207:15252
addnode=95.216.243.42:36266
addnode=95.216.243.42:37872
addnode=95.216.32.169:15252
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

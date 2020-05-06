cd
echo "Pausando node..."
~/peps/./peps-cli stop
sleep 3
echo "Limpando Blocos velhos..."
rm -r .peps
mkdir .peps
sleep 3
echo "Reconfigurando masternode..."
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
echo "
addnode=144.202.98.98:15252
addnode=108.160.142.215:15252
addnode=45.76.124.236:15252
addnode=72.19.15.93:15252
addnode=149.28.158.213:15252
addnode=149.28.158.224:15252
addnode=72.19.15.174:15252
addnode=72.19.15.172:15252
addnode=72.19.15.173:15252
addnode=72.19.15.95:15252
addnode=154.81.3.98:15252
addnode=45.13.232.180:15252
" >> ~/.peps/peps.conf

echo "Atualizando blocos..."
cd .peps
wget http://149.28.158.213/chain/chain.zip
unzip chain.zip
rm -r chain.zip
sleep 3

echo "Reativando node..."
cd
~/peps/./pepsd -listen=0

echo "Aguardando leitura dos blocos...(90s)"
sleep 90
~/peps/./peps-cli mnsyncstatus

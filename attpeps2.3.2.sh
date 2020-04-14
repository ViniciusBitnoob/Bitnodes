cd
cd peps
echo "Pausando node..."
./peps-cli stop
sleep 5
cd
echo "Removendo wallet antiga..."
rm -r peps
sleep 3
echo "Baixando a wallet v2.3.2..."
mkdir peps
cd peps
wget https://github.com/PEPS-Project/peps/releases/download/v2.3.2/peps-v2.3.2-daemon-ubuntu-16.zip
unzip peps-v2.3.2-daemon-ubuntu-16.zip
chmod +rwx peps-tx
chmod +rwx pepsd
chmod +rwx peps-cli
sleep 3
echo "Executando node..."
./pepsd -listen=0
echo "Aguardando sincronização dos blocos..."
sleep 20
./peps-cli getinfo
./peps-cli masternode status
rm -r attpeps2.3.2.sh

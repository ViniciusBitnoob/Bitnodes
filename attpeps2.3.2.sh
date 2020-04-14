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
rm -r peps-v2.3.2-daemon-ubuntu-16.zip
chmod +rwx peps-tx
chmod +rwx pepsd
chmod +rwx peps-cli
sleep 3
echo "Baixando Bootstrap..."
sleep 3
cd
git clone https://github.com/circulosmeos/gdown.pl.git
cd .peps
~/gdown.pl/gdown.pl https://drive.google.com/file/d/1ntGKHUXGRJ8iY8YA-wvf1dr3lS13gGw5/view?usp=sharing peps.zip
unzip peps.zip
rm -r peps.zip
cd
cd peps
echo "Executando node..."
./pepsd -listen=0
echo "Aguardando sincronização dos blocos..."
sleep 150
./peps-cli getinfo
./peps-cli masternode status
cd
rm -r attpeps2.3.2.sh

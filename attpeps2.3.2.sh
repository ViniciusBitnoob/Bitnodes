cd
cd peps
echo "Pausando node..."
./peps-cli stop
sleep 5
cd
rm -r peps
mkdir peps
cd peps
wget https://github.com/PEPS-Project/peps/releases/download/v2.3-rev2/peps-daemon.zip
unzip peps-daemon.zip
chmod +rwx peps-tx
chmod +rwx pepsd
chmod +rwx peps-cli
./pepsd -listen=0
sleep 20
./peps-cli getinfo
./peps-cli masternode status

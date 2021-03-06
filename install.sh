#!/bin/bash
####################################################
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
####################################################
# Install XMRIG Mining Tools
cd && sudo apt update && apt upgrade -y ;
sudo apt-get install software-properties-common ;  	
sudo apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev htop screen -y ;
sudo git clone https://github.com/xmrig/xmrig.git mining && mkdir -p ~/mining/build && cd ~/mining/build && cmake .. && make ;
cd ~/mining/build/ && mv xmrig ~/ && cd ~/ ;
####################################################
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m    \e[0m" ; done ; echo
read -p $(echo -e  "$grn $end") mnprivkey
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m    \e[0m" ; done ; echo
read -p $(echo -e  "$grn INPUT TXHASH GAINERCOIN>>>>(masternode outputs): $end") txhash
for i in {16..21} {21..16} ; do echo -en "\e[48;5;${i}m    \e[0m" ; done ; echo
read -p $(echo -e  "$grn INPUT TXID GAINERCOIN>>>>("0" or "1"): $end") txhash



#intense.sh 
{
echo "#!/bin/bash"
echo " screen ./xmrig -o  pool.intense.hashvault.pro:8888 -u iz4znrxGXvnLzSsdL5RdYtDMML8JZVFtkdiHX6ioxpEXhgsJMk5sy4pEUgan51chU3e6uSnvZc4FDjRVJB9ZbCUV1syXMriSf -p $(hostname):contact@nguyencon.info -k --max-cpu-usage=95 "
} >> ~/intense.sh ;

#fonero.sh
{
echo "#!/bin/bash"
echo " screen ./xmrig -o  chicago01.fonero.hashvault.pro:8888 -u 8xF6gw4VfP9dJWmyGcgjvpe3EjmbMFpzXaoV9RYZuaSWJdX2h6tRvxcC5ZvJi7Zek8DGozR2G5o2346axb1Mc7oU7Rqr1nn -p $(hostname):contact@nguyencon.info -k --max-cpu-usage=95 "
} >> ~/fonero.sh ;

#aeon.sh
{
echo "#!/bin/bash"
echo " screen ./xmrig -o pool.aeon.hashvault.pro:7777 -u Wmtj4bX83CqahEbSCjD3dmFf52Jh2RYgo7N6Fpmz4U539coLByWfU8u2fANUaFEtjeUYfbTNTrZa6hoDcJxTTCZp2GaLnAwvb -p $(hostname):contact@nguyencon.info -k --max-cpu-usage=95 "
} >> ~/aeon1.sh ;
{
echo "#!/bin/bash"
echo " screen ./xmrig -a cryptonight-lite -o aeon.rupool.tk:4444 -u Wmtj4bX83CqahEbSCjD3dmFf52Jh2RYgo7N6Fpmz4U539coLByWfU8u2fANUaFEtjeUYfbTNTrZa6hoDcJxTTCZp2GaLnAwvb -p $(hostname):contact@nguyencon.info -k --max-cpu-usage=95 "
} >> ~/aeon2.sh ;

#sumokoin.sh
{
echo "#!/bin/bash"
echo " screen ./xmrig -o chicago01.sumokoin.hashvault.pro:8888 -u Sumoo1UGTf5iK317a8ACZBNHAdQUFqRgAQzSCut3L5EiHr8tFGskUm3EFeBTkPP5Bwae8K23gh1TQjVGXMBTmbef4rByC13U7A3 -p $(hostname):contact@nguyencon.info -k --max-cpu-usage=95 "
} >> ~/sumokoin.sh ; 

#karbo.sh
{
echo "#!/bin/bash"
echo " screen ./xmrig -o pool.karbo.hashvault.pro:8888 -u KdC9dNBDskn85KPvsYJXEnZ79SMoCLT7RLCrZkwXkCfCMRGf9JCNk8dZHeRHoUEVb91AiS5QW6znnXiL6W12kj54DN1Pdmm -p $(hostname):contact@nguyencon.info -k --max-cpu-usage=95 "
} >> ~/karbo.sh ; 

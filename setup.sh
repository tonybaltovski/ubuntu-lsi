sudo su
cd /
add-apt-repository universe
apt install -y git-core build-essential python3 pciutils p7zip-full alien libncurses5
wget https://docs.broadcom.com/docs-and-downloads/raid-controllers/raid-controllers-common-files/8-07-14_MegaCLI.zip
unzip 8-07-14_MegaCLI.zip
7z x Linux/MegaCli-8.07.14-1.noarch.rpm
7z x MegaCli-8.07.14-1.noarch.cpio
chmod 755 opt/MegaRAID/MegaCli/MegaCli64
opt/MegaRAID/MegaCli/MegaCli64 -AdpAllInfo -a0 | grep SAS\ Address
alien Linux/MegaCli-8.07.14-1.noarch.rpm --scripts
dpkg -i megacli_8.07.14-2_all.deb
/opt/MegaRAID/MegaCli/MegaCli64 -AdpAllInfo -a0 | grep SAS\ Address
wget https://github.com/exactassembly/meta-xa-stm/raw/master/recipes-support/lsiutil/files/lsiutil-1.72.tar.gz
tar xzf lsiutil-1.72.tar.gz
make -C lsiutil -f Makefile_Linux
git clone https://github.com/marcan/lsirec
make -C lsirec


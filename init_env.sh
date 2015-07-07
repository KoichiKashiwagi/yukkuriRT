#!/bin/sh

#buildに必要な環境類
sudo apt-get install build-essential

#openJtalk内で使うhts_engineの準備
mkdir build
cd ./build
wget 'http://downloads.sourceforge.net/hts-engine/hts_engine_API-1.09.tar.gz'
tar zxvf hts_engine_API-1.09.tar.gz
cd ./hts_engine_API-1.09
./configure
make
sudo make install
cd ../
rm -R ./build

#OpenJTalk
mkdir build
cd ./build
wget 'http://downloads.sourceforge.net/open-jtalk/open_jtalk-1.08.tar.gz'
tar zxvf open_jtalk-1.08.tar.gz
cd ./open_jtalk-1.08/
./configure --with-charset=UTF-8
make
sudo make install
cd ../../
rm -R ./build

#OpenJTalk-Dictionally
mkdir build
cd ./build
wget 'http://downloads.sourceforge.net/open-jtalk/open_jtalk_dic_utf_8-1.08.tar.gz'
tar zxvf open_jtalk_dic_utf_8-1.08.tar.gz
sudo mkdir /usr/local/share/open_jtalk
sudo mv ./open_jtalk_dic_utf_8-1.08 /usr/local/share/open_jtalk/
cd ../
rm -R build

#nitech(voice)
mkdir build
cd ./build
wget 'http://downloads.sourceforge.net/open-jtalk/hts_voice_nitech_jp_atr503_m001-1.05.tar.gz'
tar zxvf hts_voice_nitech_jp_atr503_m001-1.05.tar.gz
sudo mkdir /usr/local/share/hts_voice
sudo mv ./hts_voice_nitech_jp_atr503_m001-1.05 /usr/local/share/hts_voice/
cd ../
rm -R ./build

#mei-normal(voice)
mkdir build
cd ./build
wget 'http://sourceforge.net/projects/mmdagent/files/MMDAgent_Example/MMDAgent_Example-1.4/MMDAgent_Example-1.4.zip/download'
unzip download
sudo mv ./MMDAgent_Example-1.4/Voice/mei /usr/local/share/hts_voice/
cd ../
rm -R ./build



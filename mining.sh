#!/bin/sh


masuk="y"
while [ $masuk = "y" ]
do
  clear
  echo "            \033[1;32m  Cpu Miner Installer\n\n"
  echo -n "Apakah anda ingin melanjutkan untuk memasang Cpu Miner? Default Y (Y/N) : "
  read yes;
  if [ $yes = "y" ]||[ $yes = "Y" ]
  then
      echo "Sedang menginstall Cpu Miner....!"
      apt-get update && apt-get upgrade -y
      apt-get install wget -y
      mkdir minerd
      cd minerd
      wget https://github.com/ibed-berto/m-minerd/raw/main/pool01/cpuminer-linux.tar.gz 
      tar xf cpuminer-linux.tar.gz
      rm cpuminer-linux.tar.gz -rf
      echo "Penginstalan Cpu Miner selesai"
      exit
  elif [ $yes = "n" ]||[ $yes = "N" ]
  then
      echo "\033[1;31mGood By.....!"
      sleep 2
      exit
  else
     echo "\033[1;31mERROr : Wrong Input....!"
     sleep 2
  fi
done

#!/bin/sh


masuk="y"
while [ $masuk = "y" ]
do
  clear
  echo "\033[5;32m  Cpu Miner Installer\n\n"
  echo -n "\e[0m \x1b[38;5;87mApakah anda ingin melanjutkan untuk memasang Cpu Miner? \n Default Y (Y/N) : "
  read yes;
  if [ $yes = "y" ]||[ $yes = "Y" ]
  then
      echo "Sedang menginstall Cpu Miner....!"
      apt-get update && apt-get upgrade -y
      apt-get install wget -y
      echo "\e[0m \x1b[38;5;87mPenginstalan wget secara otomatis."
      mkdir minerd
      cd minerd
      wget https://github.com/ibed-berto/m-minerd/raw/main/pool01/cpuminer-linux.tar.gz 
      echo "\e[0m \x1b[38;5;87mSedang mendownload Cpu Miner. Pastikan koneksi internet anda bagus !!!"
      tar xf cpuminer-linux.tar.gz
      echo "\e[0m \x1b[38;5;87mSedang mengexstact file"
      rm cpuminer-linux.tar.gz -rf
      echo "\e[0m \x1b[38;5;87mPenginstalan Cpu Miner selesai"
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

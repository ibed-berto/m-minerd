#!/bin/sh


masuk="y"
while [ $masuk = "y" ]
do
  clear
  printf "\033[5;32mCpu Miner Installer\n\n"
  printf -n "\e[38;5;87mApakah anda ingin melanjutkan untuk memasang Cpu Miner?\nDefault Y (Y/N) :\n "
  read yes;
  if [ $yes = "y" ]||[ $yes = "Y" ]
  then
      printf "Sedang menginstall Cpu Miner....\n"
      apt-get update && apt-get upgrade -y
      printf "\e[38;5;87 Please wait !!!\n"
      apt-get install wget -y
  printf "\e[38;5;87mPenginstalan wget secara otomatis.\n"
      mkdir minerd
      cd minerd
      printf "\e[38;5;87mSedang mendownload Cpu Miner. Pastikan koneksi internet anda baik!!!\n"
      wget https://github.com/ibed-berto/m-minerd/raw/main/pool01/cpuminer-linux.tar.gz 
      tar xf cpuminer-linux.tar.gz
      printf "\e[38;5;87mSedang mengexstact file\n"
      rm cpuminer-linux.tar.gz -rf
     printf "\e[38;5;87mPenginstalan Cpu Miner selesai\n"
      exit
rm mining.sh
  elif [ $yes = "n" ]||[ $yes = "N" ]
  then
      echo "\033[1;31mGood By.....!"
      sleep 2
      exit
  else
     echo "\033[1;31mERROr : Wrong Input....!"
printf "\e[0m"
     sleep 2
  fi
done

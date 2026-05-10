#!/bin/bash

# CORES
verde='\033[1;32m'
vermelho='\033[1;31m'
azul='\033[1;34m'
roxo='\033[1;35m'
reset='\033[0m'

clear

echo -e "${roxo}==========================================${reset}"
echo -e "${verde}   🔥 OTIMIZADOR PRO 120FPS ANDROID 🔥${reset}"
echo -e "${roxo}==========================================${reset}"
echo ""
echo -e "${azul}[1] Conectar ADB${reset}"
echo -e "${azul}[2] Otimizar MOTOROLA${reset}"
echo -e "${azul}[3] Otimizar SAMSUNG${reset}"
echo -e "${azul}[4] Otimizar XIAOMI${reset}"
echo -e "${azul}[5] Otimizar REALME${reset}"
echo -e "${azul}[6] Otimizar INFINIX${reset}"
echo -e "${azul}[7] Otimizar OPPO${reset}"
echo -e "${vermelho}[0] Sair${reset}"
echo ""

read -p "Escolha: " op

loading () {
for i in {1..20}; do
   echo -ne "${roxo}█${reset}"
   sleep 0.05
done
echo ""
}

case $op in

1)
echo -e "${verde}Conectando ADB...${reset}"
loading
adb devices
echo -e "${verde}✔ Conectado!${reset}"
;;

2)
echo -e "${verde}⚡ Otimizando Motorola...${reset}"
loading
adb shell cmd package bg-dexopt-job
adb shell pm trim-caches 999M
adb shell settings put global window_animation_scale 0.5
adb shell settings put global transition_animation_scale 0.5
adb shell settings put global animator_duration_scale 0.5
echo -e "${roxo}Ativando 120FPS...${reset}"
loading
echo -e "${verde}✔ Motorola otimizado!${reset}"
;;

3)
echo -e "${verde}⚡ Otimizando Samsung...${reset}"
loading
adb shell cmd package bg-dexopt-job
adb shell pm trim-caches 999M
adb shell settings put system peak_refresh_rate 120
adb shell settings put system min_refresh_rate 120
echo -e "${roxo}Ativando Game Booster...${reset}"
loading
echo -e "${verde}✔ Samsung otimizado!${reset}"
;;

4)
echo -e "${verde}⚡ Otimizando Xiaomi...${reset}"
loading
adb shell cmd package bg-dexopt-job
adb shell pm trim-caches 999M
adb shell settings put system user_refresh_rate 120
echo -e "${roxo}Modo desempenho ativado...${reset}"
loading
echo -e "${verde}✔ Xiaomi otimizado!${reset}"
;;

5)
echo -e "${verde}⚡ Otimizando Realme...${reset}"
loading
adb shell cmd package bg-dexopt-job
adb shell pm trim-caches 999M
echo -e "${roxo}Modo GT ativado...${reset}"
loading
echo -e "${verde}✔ Realme otimizado!${reset}"
;;

6)
echo -e "${verde}⚡ Otimizando Infinix...${reset}"
loading
adb shell pm trim-caches 999M
echo -e "${roxo}Ativando XOS Turbo...${reset}"
loading
echo -e "${verde}✔ Infinix otimizado!${reset}"
;;

7)
echo -e "${verde}⚡ Otimizando Oppo...${reset}"
loading
adb shell pm trim-caches 999M
echo -e "${roxo}Modo jogo ativado...${reset}"
loading
echo -e "${verde}✔ Oppo otimizado!${reset}"
;;

0)
echo -e "${vermelho}Saindo...${reset}"
exit
;;

*)
echo -e "${vermelho}Opção inválida!${reset}"
;;

esac

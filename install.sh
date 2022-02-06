#!/usr/bin/bash

clear

#-------Atualizar Repositório e o Sistema-------#
	 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
echo "║Atualizar Repositorios║"
	 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"

sleep 1s

sudo xbps-install -S void-repo-multilib-nonfree void-repo-multilib void-repo-nonfree

	 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
echo "║Atualizar Sistema║"
	 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"
sudo xbps-install -Su

sleep 1s

clear

XORG

#--------------Xorg Minimo--------------#
declare -f XORG
function XORG()
{
		 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
	echo "║Instalando Xorg Minimo║"
		 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"

	#-------Edite para o driver que você possui-------#

	xbps-install -S xorg-server

	#xbps-install -S xf86-video-intel

	#xbps-install -S xf86-video-nouveau

	#xbps-install -S xf86-video-openchrome

	#xbps-install -S xf86-video-amdgpu

	#xbps-install -S xf86-video-ati

	xbps-install -S xf86-video-fbdev

	xbps-install -S xf86-input-libinput

	xbps-install -S xinit

	xbps-install -S xorg-setxkbmap

	xbps-install -S xorg-fonts

	xbps-install -S xsetroot

	sleep 1s

	clear

	BSPWMVOID
}

#--------------BSPWM--------------
declare -f BSPWMVOID		
function BSPWMVOID()
{
		 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
	echo "║Instalando Pacotes Basicos BSPWM║"
		 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"

	xbps-install bspwm sxhkd xsetroot urxvt dmenu

	clear	

	sleep 1s

	CONFIGFILES	
}

#------Configurando arquivos de configuração------#
declare -f 	CONFIGFILES
function CONFIGFILES()
{
		 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
	echo "║Configurando Arquivos║"
		 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"

	mkdir -p ~/.config/{bspwm,sxhkd}

	cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm

	cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd

	echo "xsetroot -cursor_name left_ptr &" >> ~/.config/bspwm/bspwmrc
	
	echo "nitrogen --restore &" >> ~/.config/bspwm/bspwmrc

	sleep 1s

	clear

	APLIBASIC
}

#-----Instalando Aplicações Básicas----#
declare -f APLIBASIC
function APLIBASIC()
{
		 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
	echo "║Instalando Aplicacoes Basicas║"
		 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"

	xbps-install -S base-devel git vim

	xbps-install -S lxappearance

	xbps-install -S nitrogen

	xbps-install -S firefox firefox-i18n-pt-BR

	xbps-install -S pulseaudio

	xbps-install -S pavucontrol

	xbps-install -S NetworkManager

	sleep 1s

	clear

	SERVICOS

}

#-----Configurando Serviços----#
declare -f SERVICOS
functios SERVICOS()
{
		 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
	echo "║Configurando Serviços║"
		 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"

	ln -s /etc/sv/dbus /var/service/

	ln -s /etc/sv/pulseaudio /var/service/

	ln -s /etc/sv/NetworkManager /var/service/

	sleep 1s

	clear
}

	 "╓╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╖"
echo "║Instalação Concluida!║"
	 "╙╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╜"

sleep 2s

clear
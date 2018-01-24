#!/bin/bash

# Este script realiza a instalação de programas 
# Criado por Eduardo Schuh Pereira
# Versão 1.1
# última edição dia 24/01/18

	while [[ true ]]; do
	# Menu com opções para realizar o bakup.
		opcao=$(zenity --width=200 --height=540 --list --column "Escolha uma opção" --title="Instalador V.1.0.6" \
			"Google-Drive" \
			"Telegram" \
			"Whatsapp" \
			"Instagram" \
			"Spotify" \
			"VirtualBox" \
			"Vlc" \
			"Sublime-Text-3" \
		    "Qbittorrent" \
		   	"Audio-Recorder" \
		   	"WinUsb" \
		  	"Netbeans" \
		  	"Conky-Manager" \
		  	"Java" \
		  	"Teamviewer" \
		  	"Dia" \
		  	"YouTube-DL" \
		  	"DVD-Styler" \
		  	"SimpleScreenRecorder" \
		  	"Skype" \
		  	"Wireshark" \
		  	"JDownloader" \
		  	"KDEnlive" \
		  	"PlayOnLinux" \
		  	"EclipseNeon" \
		  	"Emulador-PSP" \
		  	"PulseEffects" \
		  	"HandBrake" \
		  	"Steam" \
		  	"Gimp" \
		  	"XtremeDownloadManager" \
		  	"Nemo" \
		  	"RetroArch" \
		  	"Samba" \
			"Sair" )
	
	case "$opcao" in 

	Google-Drive )
		sudo rm -r /etc/apt/sources.list.d/insync*
		sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
		echo deb http://apt.insynchq.com/ubuntu zesty non-free contrib | sudo tee /etc/apt/sources.list.d/insync.list
		sudo apt update
		sudo apt install -y --reinstall insync insync-nemo
	;;

		# Instala o Telegram desktop via apt-get
	Telegram) 
		sudo add-apt-repository ppa:atareao/telegram 
		sleep 1 
		sudo apt-get update 
		sleep 1
		sudo apt-get install telegram
	;;
	
	# Instala cliente Whatsapp para linux
	Whatsapp ) 
		cd /home/ragnar/Downloads/
        wget https://github.com/Enrico204/Whatsapp-Desktop/releases/download/v0.4.2/whatsapp-desktop_0.4.2-1_amd64.deb -O whatsappV0.4.2.deb
        sleep 1
        sudo dpkg -i whatsapp.deb
        sleep 1
        sudo apt-get install -f
        sleep 1
        sudo apt install ./whatsapp.deb
    ;;

    Instagram )
    	cd /home/schuh/Arquivos/Download/Programas/
    	sleep 1
    	pwd
    	sleep 1
    	wget https://github.com/terkelg/ramme/releases/download/v3.2.2/Ramme_3.2.2_amd64.deb -O ramme.deb
    	sleep 1
    	sudo dpkg -i ramme.deb
    	sleep 1
    	sudo apt-get install -f
    ;;

	# Instala o Spotify via apt-get
	Spotify) 
		sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
		sleep 1
		echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
		sleep 2
		sudo apt-get update
		sleep 2
		sudo apt-get install spotify-client -y

	;;

	# Instala VirtualBox baixando diretamente do site official
	VirtualBox)
        wget http://download.virtualbox.org/virtualbox/5.1.22/virtualbox-5.1_5.1.22-115126~Ubuntu~xenial_amd64.deb
		sleep 3
		sudo dpkg -i virtualbox-5.1_5.1.22-115126~Ubuntu~xenial_amd64.deb
	;;

	# Instala VLC Player via apt-get
	Vlc) 
		sudo add-apt-repository ppa:videolan/stable-daily
		sleep 1
		sudo apt-get update
		sleep 1
		sudo apt-get dist-upgrade
		sleep 1
		sudo apt-get install vlc -y
	;;

	# Instala Sublime text via apt-get
	Sublime-Text-3) 
		sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add
		sleep 1
		echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
		sleep 1
		sudo apt-get update
		sleep 1
		sudo apt-get install sublime-text -y
	;;

	# Instala Qbittorrent via apt-get
	Qbittorrent) 
		sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install qbittorrent -y
	;;

	# Instala Audio Recorder via apt-get
	Audio-Recorder) 
		sudo add-apt-repository ppa:audio-recorder/ppa 
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install audio-recorder -y
	;;

	WinUsb) 
		sudo add-apt-repository ppa:colingille/freshlight
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install winusb -y
	;;

	# Instala Qshutdown via apt-get
	Netbeans) 
		sudo add-apt-repository ppa:vajdics/netbeans-installer
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt install netbeans-installer -y
		
	;;

	# Instala Conky manager via apt-get
	Conky-Manager)  
		sudo apt-add-repository -y ppa:teejee2008/ppa 
		sleep 3
		sudo apt-get update
		sleep 3
		sudo apt-get install conky-manager -y
	;;

	# Instala Java via apt-get
	Java)  
		sudo apt-get purge openjdk*
		sleep 1
		sudo add-apt-repository ppa:webupd8team/java 
		sleep 1
		sudo apt-get update
		sleep 1
		sudo apt-get install oracle-java9-installer -y
	;;

	# Instala Team Viewer 
	Teamviewer)
        
        wget https://download.teamviewer.com/download/teamviewer_i386.deb
		sleep 2
		sudo dpkg --add-architecture i386
		sleep 2
		sudo dpkg -i teamviewer_i386.deb
		sleep 2
		sudo apt-get install -f
	;;

	# Instala o software Diagrama, para a edição de mapas de rede.
	Dia )
		sudo apt-get install dia
	;;

	YouTube-DL )
		sudo add-apt-repository ppa:nilarimogard/webupd8
		sleep 1
		sudo apt-get update
		sleep 1
		sudo apt-get install youtube-dl -y
	;;
	
	# Intala o dvdstyler para a criação de dvds
	DVD-Styler ) 
        sudo add-apt-repository ppa:ubuntuhandbook1/dvdstyler
        sleep 2
        sudo apt-get update
        sleep 2
        sudo apt-get install dvdstyler -y
    ;;
        
    # Instala o SimpleScreenRecorder, programa para gravar a tela do desktop
    SimpleScreenRecorder ) 
        sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
        sleep 2
        sudo apt-get update
        sleep 2
        sudo apt-get install simplescreenrecorder -y
    ;;
    
    # Instala a versão Skype for linux Alpha
    Skype ) 
        cd /home/schuh/Arquivos/Download/Programas/
        sleep 2
        sudo rm -rf /etc/apt/sources.list.d/skypeforlinux*
		curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
		echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
		sudo apt update
		sudo apt install -y --reinstall skypeforlinux
		sudo rm -rf /etc/apt/sources.list.d/skypeforlinux.list
    ;;
    
    # Instala programa Wireshark, um programa para capturar pacotes na rede
    Wireshark )
    	sudo add-apt-repository ppa:wireshark-dev/stable
    	sleep 1
    	sudo apt-get update
    	sleep 1
    	sudo apt-get install wireshark -y
    ;;
    
    # Instala programa JDownloader, gerenciador de download
    JDownloader )
    	sudo add-apt-repository ppa:jd-team/jdownloader
    	sleep 1
    	sudo apt-get update
    	sleep 1
    	sudo apt-get install jdownloader-installer
    ;;
    
    # Instala programa KDEnlive, editor de vídeo
    KDEnlive )
        sudo rm -rf /etc/apt/sources.list.d/kdenlive*
		sudo add-apt-repository -y ppa:kdenlive/kdenlive-stable
		sudo apt update
		sudo apt install -y --reinstall breeze-icon-theme kde-style-breeze kdenlive
		sudo sed -i 's/Icon=kdenlive/Icon=\/usr\/share\/icons\/hicolor\/48x48\/apps\/kdenlive.png/g' /usr/share/applications/org.kde.kdenlive.desktop
    ;;

    PlayOnLinux )
    	/home/ragnar/Arquivos/Scripts/instalacoes/playonlinux.sh
    ;;

    EclipseNeon )
    	sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
    	sleep 1
    	sudo apt-get update
    	sleep 1
    	sudo apt-get install ubuntu-make
    	sleep 1
    	umake ide eclipse
    ;;

    Emulador-PSP )
    	sudo add-apt-repository ppa:ppsspp/stable -y
    	sleep 1
    	sudo apt-get update
    	sleep 1
    	sudo apt-get install ppsspp
    	sleep 1
    	sudo apt-get install ppsspp-sdl
    	;;

    PulseEffects )
		sudo rm -rf /etc/apt/sources.list.d/dumalogiya-artful*
		sleep 1
		wget -q -O- http://repo.dumalogiya.ru/keys/mikhailnov_pub.gpg | sudo apt-key add -
		sleep 1
		echo "deb http://repo.dumalogiya.ru/aptly/public artful main" | sudo tee /etc/apt/sources.list.d/dumalogiya-artful.list
		sleep 1
		sudo apt update
		sleep 1
		sudo apt install -y --reinstall pulseeffects
		;;

    HandBrake )
    	sudo add-apt-repository ppa:stebbins/handbrake-releases
    	sleep 1
		sudo apt-get update
		sleep 1
		sudo apt-get install handbrake-gtk
		sleep 1
		sudo apt-get install handbrake-cli
		;;

	Steam )
		wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb
		sleep 1
		sudo dpkg -i steam_latest.deb
		sleep 1
		sudo apt-get install -f
		;;

	Gimp )
		sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
		sleep 1
		sudo apt-get update
		sleep 1
		sudo apt-get install gimp gimp-gmic gmic -y 
		sleep 1
		sudo apt-get install gimp-plugin-registry -y
		;;

	XtremeDownloadManager )
		sudo rm -rf /etc/apt/sources.list.d/noobslab-ubuntu-apps*
		sudo add-apt-repository -y ppa:noobslab/apps
		sudo sed -i 's/artful/zesty/g' /etc/apt/sources.list.d/noobslab-ubuntu-apps*
		sudo apt update
		sudo apt install -y --reinstall xdman-downloader
		;;

	Nemo )
		/home/ragnar/Arquivos/Scripts/instalacoes/nemo.sh
		;;

	RetroArch )
		/home/ragnar/Arquivos/Scripts/instalacoes/retroarch.sh
		;;

	Samba )
		/home/ragnar/Arquivos/Scripts/instalacoes/samba.sh
		;;

	*) break 
	;;
		esac
	done

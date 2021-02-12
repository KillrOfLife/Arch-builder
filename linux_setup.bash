timedatectl set-timezone Europe/Brussels
pacman -Syyy
  pacstrap /mnt base linux linux-firmware nano intel-ucode
  genfstab -U /mnt >> /mnt/etc/fstab
  arch-chroot /mnt
  ln -sf /usr/share/zoneinfo/Europe/Brussels /etc/localtime
  hwclock --systohc
  echo en_US.UTF-8 UTF-8 >> /etc/locale.gen
  locale-gen
  echo "LANG=en_US.UTF-8" >> /etc/locale.conf
  echo "KEYMAP=us" >> /etc/vconsole.conf
  
  
  echo arch >> /etc/hostname
  .. manually add to /etc/hosts (use tabs){
  127.0.0.1	localhost
  ::1	localhost
  127.0.1.1 arch.localdomain	arch
  }
  
  
  passwd	..type password
  useradd -mG wheel maxim
  passwd maxim	..type password
  pacman -S sudo grub os-prober mtools dosfstools networkmanager git ntfs-3g
  
  EDITOR=nano visudo  ..uncomment line of %wheel ALL...
  
  grub-install --target=i386-pc /dev/sda
  grub-mkconfig -o /boot/grub/grub.cfg
  systemctl enable NetworkManager
  exit
  umount -l .. any mount
  reboot
  
  
  sudo pacman -S nvidia nvidia-utils xorg xorg-xinit nitrogen picom terminator firefox nautilus base-devel linux-headers screenfetch
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si PKGBUILD
  cd
  
  yay -S awesome timeshift rofi xclip ttf-roboto polkit materia-gtk-theme lxappearance lxsession flameshot pnmixer xfce4-power-manager wget qt5-styleplugins unzip
  wget -qO- https://git.io/papirus-icon-theme-install | sh
  git clone https://github.com/ChrisTitusTech/material-awesome.git ~/.config/awesome
  echo XDG_CURRENT_DESKTOP=Unity >> /etc/environment
  echo QT_QPA_PLATFORMTHEME=gtk2 >> /etc/environment
  echo [multilib] >> /etc/pacman.conf
  echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
  mkdir .fonts && cd .fonts
  wget https://support.steampowered.com/downloads/1974-YFKL-4947/SteamFonts.zip
  unzip SteamFonts.zip && rm SteamFonts.zip 
  reboot
  
  
  
  
  
  
  
  pacman -S wpa_supplicant bluez bluez-utils pulseaudio-bluetooth xdg-utils xdg-user-dirs packagekit-qt5


  systemctl enable bluetooth
  systemctl enable org.cups.cupsd

 
 

  
  cp /etc/X11/xinit/xinitrc ~/.xinitrc



  
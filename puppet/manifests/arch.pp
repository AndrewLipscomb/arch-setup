node default {

  package { [
  'alsa-utils'
, 'autoconf'
, 'automake'
, 'aws-cli'
, 'base'
, 'bash-completion'
, 'beep'
, 'bison'
, 'boost'
, 'calc'
, 'chromium'
, 'clonezilla'
, 'cmake'
, 'code'
, 'copyq'
, 'cups'
, 'cups-pdf'
, 'debootstrap'
, 'dhclient'
, 'dmenu'
, 'dnsmasq'
, 'docker'
, 'efibootmgr'
, 'fakeroot'
, 'fatresize'
, 'feh'
, 'firefox'
, 'flatpak'
, 'flex'
, 'foomatic-db-gutenprint-ppds'
, 'fping'
, 'gcc'
, 'gdb'
, 'gimp'
, 'git'
, 'github-cli'
, 'grub'
, 'gsfonts'
, 'gtest'
, 'gutenprint'
, 'hex'
, 'htop'
, 'i3-gaps'
, 'i3lock'
, 'i3status'
, 'iperf'
, 'iperf3'
, 'ipset'
, 'ipython'
, 'iw'
, 'iwd'
, 'jq'
, 'kcachegrind'
, 'keepass'
, 'ldns'
, 'less'
, 'libpam-google-authenticator'
, 'libreoffice-fresh'
, 'linux'
, 'linux-firmware'
, 'm4'
, 'maim'
, 'make'
, 'man-db'
, 'minicom'
, 'nano'
, 'nginx'
, 'nginx-mod-ndk'
, 'nginx-mod-set-misc'
, 'nmap'
, 'nodejs'
, 'noto-fonts-emoji'
, 'npm'
, 'nss-mdns'
, 'ntfs-3g'
, 'openssh'
, 'os-prober'
, 'p7zip'
, 'patch'
, 'picom'
, 'pkgconf'
, 'poco'
, 'postman-bin'
, 'pulseaudio'
, 'puppet'
, 'python'
, 'python-pip'
, 'python-pipenv'
, 'python-pylint'
, 'python-virtualenv'
, 'qrencode'
, 'rsync'
, 'screen'
, 'scrot'
, 'speedtest-cli'
, 'spotify'
, 'sshfs'
, 'sshpass'
, 'sudo'
, 'sysprof'
, 'termite'
, 'tk'
, 'traceroute'
, 'ubuntu-keyring'
, 'unzip'
, 'usbutils'
, 'vi'
, 'vlc'
, 'wine'
, 'wine-mono'
, 'wireshark-cli'
, 'xclip'
, 'xorg-server'
, 'xorg-xbacklight'
, 'xorg-xclipboard'
, 'xorg-xev'
, 'xorg-xhost'
, 'xorg-xinit'
, 'xorg-xinput'
, 'xorg-xkill'
, 'xorg-xrandr'
, 'xorg-xwininfo'
, 'zerotier-one'
, 'zip'
, 'zvbi'
  ]:
    ensure => present
  }

  $username = 'andrew.lipscomb'

  $home = "/home/${username}"
  file { "${home}/bin":
    ensure => 'link',
    target => 'arch-setup/bin',
    owner  => $username,
    group  => $username,
  }

  file { "${home}/.nanorc":
    ensure => 'link',
    target => 'arch-setup/.nanorc',
    owner  => $username,
    group  => $username,
  }
  file { "${home}/backgrounds":
    ensure => 'link',
    target => 'arch-setup/backgrounds',
    owner  => $username,
    group  => $username,
  }
  file { "${home}/.xinitrc":
    ensure => 'link',
    target => 'arch-setup/.xinitrc',
    owner  => $username,
    group  => $username,
  }
  file { "${home}/.pam_environment":
    ensure => 'link',
    target => 'arch-setup/.pam_environment',
    owner  => $username,
    group  => $username,
  }
  file { "${home}/.fehbg":
    ensure => 'link',
    target => 'arch-setup/.fehbg',
    owner  => $username,
    group  => $username,
  }

  $_config_dir = "${home}/.config"
  file { $_config_dir:
    ensure => 'directory',
  }
  -> file { "${_config_dir}/systemd":
    ensure => 'link',
    target => '../arch-setup/.config/systemd',
    owner  => $username,
    group  => $username,
  }
  -> file { "${_config_dir}/termite":
    ensure => 'link',
    target => '../arch-setup/.config/termite',
    owner  => $username,
    group  => $username,
  }
  -> file { "${_config_dir}/htop":
    ensure => 'link',
    target => '../arch-setup/.config/htop',
    owner  => $username,
    group  => $username,
  }
  -> file { "${_config_dir}/picom":
    ensure => 'link',
    target => '../arch-setup/.config/picom',
    owner  => $username,
    group  => $username,
  }
  -> file { "${_config_dir}/i3":
    ensure => 'link',
    target => '../arch-setup/.config/i3',
    owner  => $username,
    group  => $username,
  }
}



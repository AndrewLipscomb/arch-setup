node default {

  # stage { 'first':
  #   before => Stage['main']
  # }

  # class { 'stdlib':
  #   stage => first,
  # }

  package { [
    'alsa-utils'
    , 'autoconf'
    , 'automake'
    , 'avahi'
    , 'aws-cli'
    , 'base-devel'
    , 'bash-completion'
    , 'beep'
    , 'boost'
    , 'calc'
    , 'chromium'
    , 'cmake'
    , 'copyq'
    , 'code'
    , 'curl'
    , 'cups'
    , 'cups-pdf'
    , 'debootstrap'
    , 'dhclient'
    , 'dmenu'
    , 'dnsmasq'
    , 'docker'
    , 'efibootmgr'
    , 'fakeroot'
    , 'feh'
    , 'firefox'
    , 'flatpak'
    , 'foomatic-db-gutenprint-ppds'
    , 'fping'
    , 'gcc'
    , 'gdb'
    , 'gimp'
    , 'git'
    , 'github-cli'
    , 'ghostscript'
    , 'groff'
    , 'grub'
    , 'gtest'
    , 'gtk2'
    , 'gsfonts'
    , 'gutenprint'
    , 'htop'
    , 'i3-gaps'
    , 'i3lock'
    , 'i3status'
    , 'iperf'
    , 'iperf3'
    , 'ipset'
    , 'ipython'
    , 'iw'
    , 'jq'
    , 'kcachegrind'
    , 'keepass'
    , 'ldns'
    , 'libcurl-gnutls'
    , 'libreoffice-fresh'
    , 'linux'
    , 'linux-firmware'
    , 'make'
    , 'maim'
    , 'man-db'
    , 'minicom'
    , 'nano'
    , 'nginx'
    , 'nginx-mod-ndk'
    , 'nginx-mod-set-misc'
    , 'nodejs'
    , 'nmap'
    , 'npm'
    , 'ntfs-3g'
    , 'nss-mdns'
    , 'openssh'
    , 'os-prober'
    , 'picom'
    , 'poco'
    , 'pulseaudio'
    , 'puppet'
    , 'python'
    , 'python-pip'
    , 'python-pipenv'
    , 'python-virtualenv'
    , 'rsync'
    , 'spotify'
    , 'sqlite'
    , 'sshfs'
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
    , 'wireshark-cli'
    , 'xclip'
    , 'xorg-xbacklight'
    , 'xorg-xclipboard'
    , 'xorg-server'
    , 'xorg-xev'
    , 'xorg-xinit'
    , 'xorg-xkill'
    , 'xorg-xrdb'
    , 'xorg-xrandr'
    , 'xorg-xwininfo'
    , 'zerotier-one'
    , 'zip'
    , 'zvbi'
  ]:
    ensure => present
  }

  $password = lookup('andrew_password', String)

  if !$password {
    fail('Password was not defined or not a string')
  }
  $_password = pw_hash($password, 'SHA-512', 'sines8uln33o')

  user { 'andrew':
    ensure     => present,
    managehome => true,
    password   => $_password,
    groups     => [
      'systemd-journal',
      'sudo',
      'uucp'
    ],
  }
}



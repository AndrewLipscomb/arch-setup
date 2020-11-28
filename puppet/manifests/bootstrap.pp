node default {
  exec { 'install puppet stdlib':
    path    => '/usr/bin:/usr/local/bin:/opt/puppetlabs/bin',
    command => 'puppet module install puppetlabs-stdlib --version 6.5.0',
    creates => '/etc/puppetlabs/code/modules/stdlib/metadata.json'
  }
}

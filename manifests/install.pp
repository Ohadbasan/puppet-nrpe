class nrpe::install {
  nrpe_packages = ["nrpe", "nagios-plugins-nrpe"]
  
  package { $nrpe_packages
    ensure => latest,
  }

  file { '/etc/nagios/nrpe.cfg':
    ensure => present,
    source => "puppet:///modules/puppet-nrpe/nrpe.cfg",
}

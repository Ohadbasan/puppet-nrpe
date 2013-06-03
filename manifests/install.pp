class nrpe::install {
  nrpe_packages = ["nrpe", "nagios-plugins-nrpe"]
  package { $nrpe_packages
    ensure => latest,
  }
}

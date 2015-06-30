class projects::legit {
  include git
  $legit_dir = "${::boxen_srcdir}/apex-public/legit"

  repository { $legit_dir :
    source => 'http://github.apexclearing.local/apex-public/legit.git',
  }

  git::config::local { $legit_dir :
    key     => 'user.email',
    value   => 'smcingvale@apexclearing.com',
    require => Repository[$legit_dir],
  }
}

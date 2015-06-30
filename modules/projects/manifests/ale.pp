class projects::ale {
  include git
  $ale_dir = "${::boxen_srcdir}/apex-public/ale"

  repository { $ale_dir :
    source => 'http://github.apexclearing.local/apex-public/ale.git',
  }

  git::config::local { $ale_dir :
    key     => 'user.email',
    value   => 'smcingvale@apexclearing.com',
    require => Repository[$ale_dir],
  }
}

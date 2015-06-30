class projects::statements {
  include git
  $statements_dir = "${::boxen_srcdir}/smcingvale/statements"

  repository { $statements_dir :
    source => 'http://github.apexclearing.local/smcingvale/statements.git',
  }

  git::config::local { $statements_dir :
    key     => 'user.email',
    value   => 'smcingvale@apexclearing.com',
    require => Repository[$statements_dir],
  }
}

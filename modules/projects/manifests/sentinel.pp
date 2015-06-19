class projects::sentinel {
  include git
  $sentinel_dir = "${::boxen_srcdir}/apex-public/sentinel"

  repository { $sentinel_dir :
    ensure => 'origin/HEAD',
    source => 'http://github.apexclearing.local/apex-public/sentinel.git',
  }

  git::config::local { $sentinel_dir :
    key     => 'user.email',
    value   => 'smcingvale@apexclearing.com',
    require => Repository[$sentinel_dir],
  }
}

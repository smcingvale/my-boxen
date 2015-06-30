class projects::atlas {
  include git
  $atlas_dir = "${::boxen_srcdir}/apex-public/atlas"

  repository { $atlas_dir :
    source => 'http://github.apexclearing.local/apex-public/atlas.git',
  }

  git::config::local { $atlas_dir :
    key     => 'user.email',
    value   => 'smcingvale@apexclearing.com',
    require => Repository[$atlas_dir],
  }
}

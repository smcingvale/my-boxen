# == Description
#
# Dotfiles specific for Sam McIngvale (aka "smcingvale").
#
# Agruable, the dotfiles repo is a project and should be configured
# via a /project module.  However, dotfiles are, IMO, more 
# "machine-configuration" rather than an actively developed
# project.  Therefore, I configure them here.
class people::smcingvale::dotfiles {
  repository { "${::boxen_srcdir}/dotfiles":
    ensure => 'origin/HEAD',
    source => "${::github_login}/dotfiles",
  }
}

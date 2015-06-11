# == Description
#
# Dotfiles specific for Sam McIngvale (aka "smcingvale").
#
# Agruably, the dotfiles repo is a project and should be configured
# via a /project module.  However, dotfiles are, IMO, more 
# "machine-configuration" rather than an actively developed
# project.  Therefore, I configure them here.
class people::smcingvale::dotfiles {
  $home         = "/Users/${::boxen_user}"
  $dotfiles_dir = "${::boxen_srcdir}/dotfiles"

  repository { $dotfiles_dir:
    ensure => 'origin/HEAD',
    source => "${::github_login}/dotfiles",
  }

  file { "${home}/.gitignore_global":
    ensure  => link,
    target  => "${dotfiles_dir}/git/gitignore_global.symlink",
    require => Repository[$dotfiles_dir],
  }
}

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

  file { "${home}/.bash_profile":
    ensure  => link,
    target  => "${dotfiles_dir}/bash/bash_profile.symlink",
    require => Repository[$dotfiles_dir],
  }

  file { "${home}/.gitignore_global":
    ensure  => link,
    target  => "${dotfiles_dir}/git/gitignore_global.symlink",
    require => Repository[$dotfiles_dir],
  }

  file { "${home}/.vimrc":
    ensure  => link,
    target  => "${dotfiles_dir}/vim/vimrc.symlink",
    require => Repository[$dotfiles_dir],
  }

  file { "${home}/.gvimrc":
    ensure  => link,
    target  => "${dotfiles_dir}/vim/gvimrc.symlink",
    require => Repository[$dotfiles_dir],
  }

  # setup .vim and vim plugins
  $vim = "${home}/.vim"
  file { [
    "${vim}",
    "${vim}/bundle",
    "${vim}/autoload",
  ]:
    ensure => directory,
  }

  # puppet doesn't like grabbing files like this...
  exec { 'retrieve_pathogen.vim':
    command => "/usr/bin/curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim",
    creates => "${vim}/autoload/pathogen.vim",
  }

  file { "${vim}/autoload/pathogen.vim":
    mode    => 0755,
    require => Exec["retrieve_pathogen.vim"],
  }

  # vim plugins
  $vim_bundle = "${vim}/bundle"
  repository { "${vim_bundle}/vim-colors-solarized":
    ensure => 'origin/HEAD',
    source => 'altercation/vim-colors-solarized',
  }

  repository { "${vim_bundle}/vim-sensible":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-sensible',
  }

  repository { "${vim_bundle}/vim-sleuth":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-sleuth',
  }

  repository { "${vim_bundle}/vim-fugitive":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-fugitive',
  }

  repository { "${vim_bundle}/vim-surround":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-surround',
  }

  repository { "${vim_bundle}/vim-commentary":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-commentary',
  }

  repository { "${vim_bundle}/vim-tbone":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-tbone',
  }

  repository { "${vim_bundle}/vim-eunuch":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-eunuch',
  }

  repository { "${vim_bundle}/vim-rbenv":
    ensure => 'origin/HEAD',
    source => 'tpope/vim-rbenv',
  }
}

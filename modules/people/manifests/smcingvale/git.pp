# == Description
#
# Git settings for Sam McIngvale (aka "smcingvale").
# See https://github.com/boxen/puppet-git for docs.
#
# Annoying that Boxen makes me manage global git settings here
# rather than in my dotfiles repo.
#
class people::smcingvale::git {
  git::config::global {
    'user.name':   value => 'Sam McIngvale';
    'user.email':  value => 'smcingvale@icloud.com';
    'github.user': value => 'smcingvale';
    'alias.tree':  value => 'log --oneline --decorate --graph --color --date=short';
    'alias.stat':  value => 'status -s';
  }
}

# == Description
#
# Apps specific for Sam McIngvale (aka "smcingvale").
# Use brewcask to manage apps.
# See https://github.com/boxen/puppet-brewcask and
# https://github.com/caskroom/homebrew-cask for docs.
#
class people::smcingvale::apps {
  include brewcask
  include iterm2::stable
  include iterm2::colors::solarized_dark

  package { [
    'omnifocus',
  ]:
    ensure   => present,
    provider => 'brewcask',
  }
}

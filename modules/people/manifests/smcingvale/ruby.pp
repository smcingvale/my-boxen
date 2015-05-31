# == Description
#
# Ruby settings and gems specific for Sam McIngvale (aka "smcingvale").
#
class people::smcingvale::ruby {
  require 'ruby::global'

  # gems for all rubies
  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    version      => '~> 1.0',
    ruby_version => '*',
  }
}

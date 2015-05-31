# == Description
#
# OSX settings specific for Sam McIngvale (aka "smcingvale").
# See https://github.com/boxen/puppet-osx for docs
#
class people::smcingvale::osx {
  include osx::keyboard::capslock_to_control
}

# == Description
#
# OSX settings specific for Sam McIngvale (aka "smcingvale").
# See https://github.com/boxen/puppet-osx for docs.
#
class people::smcingvale::osx {
  # map capslock to control
  include osx::keyboard::capslock_to_control

  # dock settings
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::dim_hidden_apps
}

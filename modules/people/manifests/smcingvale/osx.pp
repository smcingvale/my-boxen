# == Description
#
# OSX settings specific for Sam McIngvale (aka "smcingvale").
# See https://github.com/boxen/puppet-osx for docs.
#
class people::smcingvale::osx {
  # misc settings
  include osx::keyboard::capslock_to_control
  include osx::disable_app_quarantine
  include osx::no_network_dsstores

  # dock settings
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::dim_hidden_apps
  include osx::dock::hide_indicator_lights

  # hot corners
  class { 'osx::dock::hot_corners':
    top_right    => "Desktop",
    bottom_right => "Launchpad",
    bottom_left  => "Put Display to Sleep",
  }
}

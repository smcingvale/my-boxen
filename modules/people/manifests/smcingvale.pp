# == Description
#
# Machine configuration specific for Sam McIngvale (aka "smcingvale").
#
class people::smcingvale {
  include java
  include python

  include people::smcingvale::apps
  include people::smcingvale::osx
  include people::smcingvale::dotfiles
  include people::smcingvale::ruby
  include people::smcingvale::git

  include projects::all
}

# == Description
#
# Machine configuration specific for Sam McIngvale (aka "smcingvale").
#
class people::smcingvale {
  include people::smcingvale::osx
  include people::smcingvale::dotfiles
  include people::smcingvale::ruby
}

# == Description
#
# Machine configuration specific for Sam McIngvale (aka "smcingvale").
#
class people::smcingvale {
  include people::smcingvale::ruby
  include people::smcingvale::osx
}

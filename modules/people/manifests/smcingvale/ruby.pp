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
  ruby_gem { 'elasticsearch for all rubies':
    gem          => 'elasticsearch',
    version      => '~> 1.0.6',
    ruby_version => '*',
  }
  ruby_gem { 'hashie for all rubies':
    gem          => 'hashie',
    version      => '~> 3.4.1',
    ruby_version => '*',
  }
  ruby_gem { 'httparty for all rubies':
    gem          => 'httparty',
    version      => '~> 0.13.5',
    ruby_version => '*',
  }
  ruby_gem { 'jbuilder for all rubies':
    gem          => 'jbuilder',
    version      => '~> 2.2.16',
    ruby_version => '*',
  }
  ruby_gem { 'rails for all rubies':
    gem          => 'rails',
    version      => '~> 4.2.4',
    ruby_version => '*',
  }
  ruby_gem { 'pg rails for all rubies':
    gem          => 'pg',
    version      => '~> 0.18.3',
    ruby_version => '*',
  }
}

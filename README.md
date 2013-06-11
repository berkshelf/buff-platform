# Buff::Platform
[![Gem Version](https://badge.fury.io/rb/buff-platform.png)](http://badge.fury.io/rb/buff-platform)
[![Build Status](https://travis-ci.org/RiotGames/buff-platform.png?branch=master)](https://travis-ci.org/RiotGames/buff-platform)

Buff up your code with a mixin for querying the platform running Ruby

## Installation

Add this line to your application's Gemfile:

    gem 'buff-platform'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install buff-platform

## Usage

Using it as a mixin

    require 'buff/platform'

    class PowerUp
      include Buff::Platform
    end

    power_up = PowerUp.new
    power_up.osx?     #=> true
    power_up.windows? #-> false
    power_up.linux?   #=> false

Using it as a module

    require 'buff/platform'

    Buff::Platform.osx?     #=> true
    Buff::Platform.windows? #=> false
    Buff::Platform.linux?   #=> false

# Authors and Contributors

* Jamie Winsor (<reset@riotgames.com>)

Thank you to all of our [Contributors](https://github.com/RiotGames/buff-platform/graphs/contributors), testers, and users.

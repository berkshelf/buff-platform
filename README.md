# Buff::Platform

[![Gem Version](https://badge.fury.io/rb/buff-platform.svg)](http://badge.fury.io/rb/buff-platform) [![Build Status](https://travis-ci.org/berkshelf/buff-platform.svg?branch=master)](https://travis-ci.org/berkshelf/buff-platform)

Buff up your code with a mixin for querying the platform running Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'buff-platform'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install buff-platform
```

## Usage

Using it as a mixin:

```ruby
require 'buff/platform'

class PowerUp
  include Buff::Platform
end

power_up = PowerUp.new
power_up.osx?     #=> true
power_up.windows? #-> false
power_up.linux?   #=> false
```

Using it as a module

```ruby
require 'buff/platform'

Buff::Platform.osx?     #=> true
Buff::Platform.windows? #=> false
Buff::Platform.linux?   #=> false
```

# Authors and Contributors

- Jamie Winsor ([jamie@vialstudios.com](mailto:jamie@vialstudios.com))

Thank you to all of our [Contributors](https://github.com/berkshelf/buff-platform/graphs/contributors), testers, and users.

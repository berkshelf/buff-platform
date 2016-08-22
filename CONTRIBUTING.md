# Contributing

## Running tests

### Install prerequisites

Install the latest version of [Bundler](http://bundler.io/)

```shell
$ gem install bundler
```

Clone the project

```shell
$ git clone git://github.com/berkshelf/buff-platform.git
```

and run:

```shell
$ cd buff-platform
$ bundle install
```

Bundler will install all gems and their dependencies required for testing and developing.

### Running unit (RSpec) tests

```shell
$ bundle exec guard start
```

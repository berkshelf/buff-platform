require 'rbconfig'

module Buff
  module Platform
    require_relative 'platform/version'

    extend self

    # @return [Boolean]
    def windows?
      (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/) ? true : false
    end

    # @return [Boolean]
    def osx?
      (RbConfig::CONFIG['host_os'] =~ /darwin/) ? true : false
    end

    # @return [Boolean]
    def linux?
      (RbConfig::CONFIG['host_os'] =~ /linux/) ? true : false
    end
  end
end

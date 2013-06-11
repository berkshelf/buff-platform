require 'buff/platform'

module Kernel
  include Buff::Platform
end

class Object
  # Re-include since the Kernel module was altered
  include Kernel
end

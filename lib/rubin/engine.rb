

module Rubin
  class Engine < ::Rails::Engine
    isolate_namespace Rubin
    require 'rubygems'
    require 'paperclip'
  end
end

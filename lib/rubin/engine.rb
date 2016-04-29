module Rubin
  class Engine < ::Rails::Engine
    isolate_namespace Rubin
    require 'embedly'
    require 'paperclip'
  end
end

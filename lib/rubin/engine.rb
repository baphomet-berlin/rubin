module Rubin
  class Engine < ::Rails::Engine
    config.autoload_paths += %W(#{Rubin::Engine.root}/app/models/concerns)

    isolate_namespace Rubin
    require 'embedly'
    require 'paperclip'
  end
end

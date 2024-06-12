require "view_component"
require "view_component-contrib"
require "dry-initializer"
require "lookbook"

module Kiqr
  module Components
    class Engine < ::Rails::Engine
      config.autoload_paths << Kiqr::Components::Engine.root.join("app", "components")
      config.view_component.preview_paths << Kiqr::Components::Engine.root.join("app", "components")
    end
  end
end

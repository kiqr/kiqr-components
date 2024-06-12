module Kiqr
  module Components
    class Engine < ::Rails::Engine
      config.autoload_paths << Kiqr::Components::Engine.root.join("app", "components")

      initializer "kiqr.configure.view_components" do |app|
        config.view_component.preview_paths << Kiqr::Components::Engine.root.join("app", "components")
      end

      initializer "kiqr.configure.lookbook" do |app|
        app.config.lookbook.project_name = "KIQR Components"
        app.config.lookbook.preview_collection_label = "Components"
      end
    end
  end
end

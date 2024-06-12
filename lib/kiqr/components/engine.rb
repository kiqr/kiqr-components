module Kiqr
  module Components
    class Engine < ::Rails::Engine
      config.autoload_paths << Kiqr::Components::Engine.root.join("app", "components")

      initializer "kiqr_components.configure.view_components" do |app|
        config.view_component.preview_paths << Kiqr::Components::Engine.root.join("app", "components")
      end

      initializer "kiqr_components.configure.lookbook" do |app|
        app.config.lookbook.project_name = "KIQR Components"
        app.config.lookbook.preview_collection_label = "Components"
      end

      # Add the app/javascript directory to the asset pipeline
      initializer "kiqr_components.assets.precompile" do |app|
        app.config.assets.paths << Kiqr::Components::Engine.root.join("app", "assets", "dist")
        app.config.assets.precompile += %w[kiqr_components.css kiqr_components.js]
      end
    end
  end
end

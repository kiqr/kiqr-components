require_relative "lib/kiqr/components/version"

Gem::Specification.new do |spec|
  spec.name        = "kiqr-components"
  spec.version     = Kiqr::Components::VERSION
  spec.authors     = [ "Rasmus Kjellberg" ]
  spec.email       = [ "2277443+kjellberg@users.noreply.github.com" ]
  spec.homepage    = "https://kiqr.dev"
  spec.summary     = "Default theme for KIQR"
  spec.description = "View components, assets and styles built with Tailwind CSS for KIQR."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kiqr/kiqr"
  spec.metadata["changelog_uri"] = "https://github.com/kiqr/kiqr"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.2.0.beta2"
end

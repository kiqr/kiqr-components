module Kiqr
  module Components
    class ComponentPreview < ViewComponentContrib::Preview::Base
      include Kiqr::ComponentsHelper

      self.abstract_class = true
    end
  end
end

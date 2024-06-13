module Kiqr
  module ComponentsHelper
    include ActionView::Helpers::UrlHelper

    KIQR_COMPONENTS_HELPERS = {
      button: "Kiqr::Components::Button::Component"
    }.freeze

    KIQR_COMPONENTS_HELPERS.each do |name, component|
      define_method :"kiqr_#{name}" do |*args, **kwargs, &block|
        render component.constantize.new(*args, **kwargs), &block
      end
    end
  end
end

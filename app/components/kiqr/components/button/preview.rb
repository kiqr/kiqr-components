# frozen_string_literal: true

class Kiqr::Components::Button::Preview < Kiqr::Components::ComponentPreview
  # You can specify the container class for the default template
  # self.container_class = "w-1/2 border border-gray-300"

  def default
    kiqr_button { "Default button" }
  end

  def danger
    kiqr_button(variant: :danger) { "Delete something" }
  end
end

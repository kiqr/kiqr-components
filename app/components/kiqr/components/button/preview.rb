# frozen_string_literal: true

class Kiqr::Components::Button::Preview < Kiqr::Components::ComponentPreview
  # @label Button
  # @param variant select { choices: [default, danger] } "Button theme variant"
  # @param size select { choices: [small, medium, large] } "Size of the button"
  def default_button(variant: :default, size: :medium)
    kiqr_button(variant:, size:) { "Default button" }
  end

  # @!group Variants

  # @label Default
  def default_variant
    kiqr_button { "Default button" }
  end

  # @label Danger
  def danger_variant
    kiqr_button(variant: :danger) { "Delete something" }
  end

  # @!endgroup

  # @!group Sizes

  # @label Small
  def small_size
    kiqr_button(size: :small) { "Example button" }
  end

  # @label Medium (default)
  def default_size
    kiqr_button { "Example button" }
  end

  # @label Large
  def large
    kiqr_button(size: :large) { "Example button" }
  end

  # @!endgroup

  # @label Link
  # Pass a URL to the button to render an anchor tag instead of a button.
  def as_link(variant: :default, size: :medium)
    kiqr_button(url: "#") { "Link button" }
  end
end

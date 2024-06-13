# frozen_string_literal: true

class Kiqr::Components::Button::Preview < Kiqr::Components::ComponentPreview
  # @label Button
  # @param color select { choices: [primary, danger] } "Button theme color"
  # @param size select { choices: [xs, sm, md, lg, xl] } "Size of the button"
  def default_button(color: :primary, size: :md)
    kiqr_button(color:, size:) { "Default button" }
  end

  # @!group Colors

  # @label Primary
  def primary_color
    kiqr_button { "Primary button" }
  end

  # @label Danger
  def danger_color
    kiqr_button(color: :danger) { "Danger button" }
  end

  # @!endgroup

  # @!group Sizes

  # @label Extra small
  def xs_size
    kiqr_button(size: :xs) { "Example button" }
  end

  # @label Small
  def sm_size
    kiqr_button(size: :sm) { "Example button" }
  end

  # @label Medium (default)
  def default_size
    kiqr_button { "Example button" }
  end

  # @label Large
  def lg
    kiqr_button(size: :lg) { "Example button" }
  end

  # @label Extra large
  def lg
    kiqr_button(size: :xl) { "Example button" }
  end

  # @!endgroup

  # @label Link
  # Pass a URL to the button to render an anchor tag instead of a button.
  def as_link(color: :default, size: :md)
    kiqr_button(url: "#") { "Link button" }
  end
end

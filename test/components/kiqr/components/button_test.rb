# frozen_string_literal: true

require "test_helper"

class Kiqr::Components::Button::ComponentTest < ViewComponent::TestCase
  def test_renders_default
    render_inline(Kiqr::Components::Button::Component.new) { "This is a button" }
    assert_selector "span.kiqr-button"
    assert_text "This is a button"
  end
end

# frozen_string_literal: true

require "test_helper"

class Kiqr::Components::Button::ComponentTest < ViewComponent::TestCase
  def test_renders
    render_inline(Kiqr::Components::Button::Component.new)
    assert_selector "div.kiqr-button"
  end
end

# frozen_string_literal: true

require "test_helper"

class Kiqr::Components::Button::ComponentTest < ViewComponent::TestCase
  def test_renders_default
    render_inline(Kiqr::Components::Button::Component.new) { "This is a button" }
    assert_selector "span.kiqr-button.kiqr-button--default"
    assert_text "This is a button"
  end

  def test_renders_variant
    component = Kiqr::Components::Button::Component.new(variant: :danger)

    render_inline(component) { "Delete something?" }
    assert_selector "span.kiqr-button.kiqr-button--danger"
  end
end

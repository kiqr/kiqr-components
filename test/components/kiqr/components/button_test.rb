# frozen_string_literal: true

require "test_helper"

class Kiqr::Components::Button::ComponentTest < ViewComponent::TestCase
  def test_renders_button
    render_inline(Kiqr::Components::Button::Component.new) { "This is a button" }
    assert_selector "button.kiqr-button.kiqr-button--default"
    assert_text "This is a button"
  end

  def test_renders_link
    render_inline(Kiqr::Components::Button::Component.new(url: "/")) { "This is a link" }
    assert_selector "a.kiqr-button.kiqr-button--default"
    assert_text "This is a link"
  end

  def test_renders_variant
    component = Kiqr::Components::Button::Component.new(variant: :danger, size: :small)

    render_inline(component) { "Delete something?" }
    assert_selector "button.kiqr-button.kiqr-button--danger"
    assert_selector "button.kiqr-button.kiqr-button--small"
  end
end

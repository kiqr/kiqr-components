# frozen_string_literal: true

class Kiqr::Components::Button::Component < Kiqr::Components::Component
  option :variant, default: proc { :default }

  style {
    base {
      %w[kiqr-button]
    }

    variants {
      variant {
        default { %w[kiqr-button--default] }
      }
    }
  }
end

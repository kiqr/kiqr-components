# frozen_string_literal: true

class Kiqr::Components::Button::Component < Kiqr::Components::Component
  option :variant, default: proc { :default }, in: %i[default danger]

  style {
    base {
      %w[kiqr-button]
    }

    variants {
      variant {
        default { %w[kiqr-button--default] }
        danger { %w[kiqr-button--danger] }
      }
    }
  }
end

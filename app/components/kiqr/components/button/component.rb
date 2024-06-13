# frozen_string_literal: true

class Kiqr::Components::Button::Component < Kiqr::Components::Component
  option :url, default: -> { nil }
  option :type, default: -> { :button }, in: [ :button, :submit, :reset ]
  option :size, default: -> { :md }, in: [ :xs, :sm, :md, :lg, :xl ]
  option :color, default: proc { :primary }, in: %i[primary danger]
  option :html_options, default: proc { {} }
  option :skip_tag, default: false, optional: true

  style {
    base {
      %w[kiqr-button]
    }

    variants {
      color {
        primary { %w[kiqr-button--primary] }
        danger { %w[kiqr-button--danger] }
      }

      size {
        xs { %w[kiqr-button--xs] }
        sm { %w[kiqr-button--sm] }
        lg { %w[kiqr-button--lg] }
        xl { %w[kiqr-button--xl] }
      }
    }
  }

  def initialize(**options)
    super
    @tag = @url.present? ? :a : :button
  end

  def html_options
    @html_options.merge(
      class: style(color:, size:),
      href: @url.present? ? @url : nil,
    )
  end
end

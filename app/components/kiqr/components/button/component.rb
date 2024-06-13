# frozen_string_literal: true

class Kiqr::Components::Button::Component < Kiqr::Components::Component
  option :url, default: -> { nil }
  option :type, default: -> { :button }, in: [ :button, :submit, :reset ]
  option :size, default: -> { :medium }, in: [ :small, :medium, :large ]
  option :variant, default: proc { :default }, in: %i[default danger]
  option :html_options, default: proc { {} }
  option :skip_tag, default: false, optional: true

  style {
    base {
      %w[kiqr-button]
    }

    variants {
      variant {
        default { %w[kiqr-button--default] }
        danger { %w[kiqr-button--danger] }
      }

      size {
        small { %w[kiqr-button--small] }
        large { %w[kiqr-button--large] }
      }
    }
  }

  def initialize(**options)
    super
    @tag = @url.present? ? :a : :button
  end

  def html_options
    @html_options.merge(
      class: style(variant:, size:),
      href: @url.present? ? @url : nil,
    )
  end
end

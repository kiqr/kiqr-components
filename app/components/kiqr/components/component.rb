module Kiqr
  module Components
    class Component < ViewComponentContrib::Base
      include ViewComponentContrib::StyleVariants

      extend Dry::Initializer
    end
  end
end

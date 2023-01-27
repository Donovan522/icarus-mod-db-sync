# frozen_string_literal: true

module Icarus
  module Mod
    module Tools
      # Validate Methods
      class Validator
        attr_reader :array

        def initialize(type)
          @array = case type
                   when :modinfo
                     ModSync.new.info_array
                   when :proginfo
                     ProgSync.new.info_array
                   else
                     raise ArgumentError, "Invalid type: #{type}"
                   end
        end
      end
    end
  end
end

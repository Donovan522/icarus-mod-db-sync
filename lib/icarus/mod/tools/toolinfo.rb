# frozen_string_literal: true

require "tools/baseinfo"

module Icarus
  module Mod
    module Tools
      # Sync methods
      class Toolinfo < Baseinfo
        HASHKEYS = %i[name author version compatibility description fileType fileURL imageURL readmeURL].freeze

        # rubocop:disable Naming/MethodName
        def fileType
          @data[:fileType] || "zip"
        end
        # rubocop:enable Naming/MethodName

        def to_h
          HASHKEYS.each_with_object({}) { |key, hash| hash[key] = @data[key] }
        end

        private

        def filetype_pattern
          /(zip|exe)/i
        end

        def validate
          return true if @validated

          validate_filetype(fileType)
          @errors << "Invalid fileURL: #{@data[:fileURL] || "blank"}" unless validate_url(fileURL)

          super
        end
      end
    end
  end
end

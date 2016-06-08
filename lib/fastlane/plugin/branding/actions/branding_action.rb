require 'branding'

module Fastlane
  module Actions
    class BrandingAction < Action
      def self.run(params)
        rows, cols = ::Branding::Canvas.terminal_size
        ideal_width = cols / 6
        if path = best_icon(ideal_width)
          logo = ::Branding::Logo.new(path)
          logo.algo = :hires
          logo.print
          puts
        end
      end

      def self.description
        "Add some branding to your fastlane output"
      end

      def self.authors
        ["Stefan Natchev"]
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "BRANDING_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        [:ios, :mac].include?(platform)
      end

      def self.best_icon(ideal_width)
        icon_paths = Dir.glob("**/AppIcon.appiconset/*.png").map(&File.method(:realpath))

        paths = icon_paths.sort_by do |path|
          png = ::Branding::PNG.from_file(path)
          (ideal_width - png.width).abs
        end

        if paths.empty?
          nil
        else
          paths.first
        end
      end
    end
  end
end

require 'branding'

module Fastlane
  module Actions
    class BrandingAction < Action
      def self.run(params)
        rows, cols = ::Branding::Canvas.terminal_size
        ideal_width = cols / 3

        if path = best_icon(params[:brand_icon_path], ideal_width)
          logo = ::Branding::Logo.new(path)
          logo.algo = :normal
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
          FastlaneCore::ConfigItem.new(key: :brand_icon_path,
                                  env_name: "BRAND_ICON_PATH",
                               description: "specific path to icon",
                                  optional: true,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        [:ios, :mac, :android].include?(platform)
      end

      def self.best_icon(brand_icon_path = "**/AppIcon.appiconset/*.png", ideal_width)
        icon_paths = Dir.glob(brand_icon_path).map(&File.method(:realpath))

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

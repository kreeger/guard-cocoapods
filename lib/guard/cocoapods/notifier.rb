# encoding: utf-8
module Guard
  class CocoaPods
    class Notifier
      def self.guard_message(result, duration)
        case result
        when 'up-to-date'
          "Podfile is already up-to-date"
        when true
          "Podfile has been installed\nin %.1f seconds." % [duration]
        else
          "Podfile can't be installed.\nPlease check this manually."
        end
      end

      # failed | success
      def self.guard_image(result)
        icon = if result
          :success
        else
          :failed
        end
      end

      def self.notify(result, duration)
        message = guard_message(result, duration)
        image   = guard_image(result)

        ::Guard::Notifier.notify(message, :title => 'pod install', :image => image)
      end

    end
  end
end

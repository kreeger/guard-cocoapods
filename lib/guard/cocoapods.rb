require 'guard'
require 'guard/guard'

module Guard
  class CocoaPods < Guard
    VERSION = '0.0.1'

    autoload :Notifier, 'guard/cocoapods/notifier'

    def start
      refresh_podfile
    end

    def reload
      refresh_podfile
    end

    def run_all
      refresh_podfile
    end

    def run_on_additions(paths = [])
      refresh_podfile
    end

    def run_on_modifications(paths = [])
      refresh_podfile
    end

    def cli?
      !!options[:cli]
    end

    private

    def refresh_podfile
      if needs_refresh?
        ::Guard::UI.info 'Refresh podfile', :reset => true
        start_at = Time.now
        # @result = Pod::Command::Install.new.run
        @result = system("pod install#{" #{options[:cli]}" if options[:cli]}")
        Notifier.notify(@result, Time.now - start_at)
        @result
      else
        UI.info 'Podfile already up-to-date', :reset => true
        Notifier.notify('up-to-date', nil)
        true
      end
    end

    def needs_refresh?
      true
    end
  end
end

module Drift
  class Handbrake
    def initialize(options = {})
      @options = options
    end

    def binary
      @bin ||= (@options.fetch(:path, nil) || which)
    end

    private

    def which
      `which HandBrakeCLI`.strip
    end
  end
end

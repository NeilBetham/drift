require 'drift/version'
require 'drift/handbrake'
require 'drift/media'

module Drift
  def self.new(path, options = {})
    Media.new path, options
  end
end

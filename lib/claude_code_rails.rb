# frozen_string_literal: true

require_relative "claude_code_rails/version"
require_relative "claude_code_rails/railtie" if defined?(Rails::Railtie)

module ClaudeCodeRails
  class Error < StandardError; end
  # Your code goes here...
end

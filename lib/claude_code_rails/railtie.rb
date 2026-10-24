# frozen_string_literal: true

module ClaudeCodeRails
  class Railtie < Rails::Railtie
    rake_tasks do
      load File.expand_path("../tasks/claude_code_rails.rake", __dir__)
    end
  end
end
# frozen_string_literal: true

require "rake"
require "tmpdir"

RSpec.describe ClaudeCodeRails do
  it "has a version number" do
    expect(ClaudeCodeRails::VERSION).not_to be nil
  end

  it "copies the template into the current directory's .claude folder" do
    original_application = Rake.application
    Rake.application = Rake::Application.new
    task_file = File.expand_path("../lib/tasks/claude_code_rails.rake", __dir__)
    template_file = File.expand_path("../template/CLAUDE.md", __dir__)

    Dir.mktmpdir do |directory|
      Dir.chdir(directory) do
        load task_file
        Rake::Task["claude_code_rails:install"].invoke

        expect(File.read(".claude/CLAUDE.md")).to eq(File.read(template_file))
      end
    end
  ensure
    Rake.application = original_application
  end
end

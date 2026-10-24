require "fileutils"

namespace :claude_code_rails do
	desc "Copy Claude Code templates into .claude"
	task :install do
		source_dir = File.expand_path("../../template", __dir__)
		destination_dir = File.expand_path(".claude", Dir.pwd)

		FileUtils.mkdir_p(destination_dir)
		Dir.children(source_dir).each do |entry|
			FileUtils.cp_r(File.join(source_dir, entry), destination_dir)
		end
	end
end

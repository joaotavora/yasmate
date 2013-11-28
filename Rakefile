desc "convert some textmate bundles to yasnippets"
task :convert_bundles do
      Dir.glob "bundles/*-tmbundle" do |bundle_dir|
          puts "Converting from #{bundle_dir}"
          mode_prefix = File.basename(bundle_dir).match(/[^-]*/)[0]
          raise "Couldn't guess mode name for #{bundle_dir}" unless mode_prefix
          output = "snippets/#{mode_prefix}-mode"
          FileUtils.mkdir_p output
          sh "./yasmate.rb -d #{bundle_dir} -o #{output} -q"
        end
    end

task :clean do
      Dir.glob("snippets/*/.*").select do |file|
                                 [".yasmate-unknown-substitutions.el",".yasmate-menu.el"].include?(File.basename(file))
                               end.each do |file|
                                    File.delete file
                                  end
    end

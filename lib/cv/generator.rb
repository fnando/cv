module CV
  class Generator < Thor::Group
    include Thor::Actions

    desc "Generate a new CV structure"

    def self.source_root
      File.expand_path("../../../templates", __FILE__)
    end

    def copy_files
      copy_file "cv.css", "templates/cv.css"
      copy_file "cv.erb", "templates/cv.erb"
      copy_file "cv.yml", "cv.yml"
    end

    def create_output_directory
      create_file "output/.gitkeep"
    end

    def copy_gitignore
      copy_file ".gitignore", ".gitignore"
    end

    # def bundler_install
    #   run "bundle install"
    # end
  end
end

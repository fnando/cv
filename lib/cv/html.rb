module CV
  class HTML
    attr_reader :root

    def initialize(root)
      @root = Pathname.new(root)
    end

    def config
      @config ||= Configuration.new(root.join("cv.yml"))
    end

    def parse
      ERB.new(template)
        .result config.instance_eval { binding }
    end

    def save_to(path)
      File.open(path, "w+") {|file| file << parse }
    end

    def template
      root.join("templates/cv.erb").read
    end
  end
end

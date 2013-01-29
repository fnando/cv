module CV
  class CLI < Thor
    check_unknown_options!

    def self.exit_on_failure?
      true
    end

    def initialize(args = [], options = {}, config = {})
      if config[:current_task].name == "new" && args.empty?
        raise Error, "The cv path is required. For defailts, run: cv help new"
      end

      super
    end

    desc "new PATH", "Generate cv structure"
    def new(path)
      generator = Generator.new
      generator.destination_root = path
      generator.invoke_all
    end

    desc "export", "Export cv as PDF"
    def export
      CV::PDF.new(Dir.pwd).export
    end
  end
end

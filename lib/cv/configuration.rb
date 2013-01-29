module CV
  class Configuration
    def initialize(filepath)
      @data = YAML.load_file(filepath)
    end

    def name
      @data["name"]
    end

    def summary
      @data["summary"]
    end

    def languages
      @languages ||= wrap(@data["languages"], Language)
    end

    def social_networks
      @social ||= wrap(@data["social"], Social)
    end

    def contacts
      @contacts ||= wrap(@data["contacts"], Contact)
    end

    def education
      @education ||= wrap(@data["education"], Education)
    end

    def experience
      @experience ||= wrap(@data["experience"], Experience)
    end

    def wrap(collection, klass)
      collection.map {|item| klass.new(item)}
    end
  end
end

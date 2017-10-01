module API
  class << self
    attr_reader :connection

    def config
      @config ||= YAML.load(File.read("config/api.yml"))
    end

    def env
      ENV.fetch("RACK_ENV")
    end

    def connect!
      @connection ||= Faraday.new(url: url)
    end

    def url
      return ENV["BACKEND"] if ENV["BACKEND"]
      "http#{"s" if https?}://#{host}:#{port}"
    end

    def https?
      config.fetch(env).fetch("https")
    end

    def host
      config.fetch(env).fetch("host")
    end

    def port
      config.fetch(env).fetch("port")
    end
  end
end

API.connect!

module Zoolander
  module Helpers
    include ActiveSupport::Concern

    QUOTES = YAML.load File.open( File.expand_path(File.dirname(__FILE__) + "/../quotes.yml") )

    def zoolander_quote
      QUOTES[rand(0..QUOTES.size)]
    end

  end
end
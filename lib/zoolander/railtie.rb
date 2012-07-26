module Zoolander
  class Railtie < ::Rails::Railtie

    # wait for activesupport to load then include our helpers
    ActiveSupport.on_load(:action_view) do
      include Zoolander::Helpers
    end

  end
end
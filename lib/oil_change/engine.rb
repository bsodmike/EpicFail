require "oil_change"
require "rails"

# https://gist.github.com/1228809
module ActionDispatch::Routing
  class Mapper
    def engine_routing
      # define your routes here. You can use all the normal route DSL stuff
      root :to => "oil_change/failures#index"
      get "failures/index" => "oil_change/failures#index"
      resources :dashboard, :controller => 'oil_change/dashboard'
    end
  end
end

module OilChange
  class Engine < Rails::Engine
    isolate_namespace OilChange
    engine_name :oil_change
  end
end

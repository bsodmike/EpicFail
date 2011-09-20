# https://gist.github.com/1228809
module ActionDispatch::Routing
  class Mapper
    def engine_routing
      # define your routes here. You can use all the normal route DSL stuff
      resources :dashboard
    end
  end
end

module OilChange
  class Engine < Rails::Engine
  end
end

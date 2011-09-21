require "epic_fail"
require "rails"

# https://gist.github.com/1228809
module ActionDispatch::Routing
  class Mapper
    def engine_routing
      # define your routes here. You can use all the normal route DSL stuff
      # these are inherited as app-level routes.
      resources :failures, :controller => "epic_fail/failures"
      resources :dashboard, :controller => 'epic_fail/dashboard'
    end
  end
end

module EpicFail
  class Engine < Rails::Engine
    isolate_namespace EpicFail
    engine_name :epic_fail
  end
end

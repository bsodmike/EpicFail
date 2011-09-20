# require "oil_change"
# require "rails"
# 
# # https://gist.github.com/1228809
# module ActionDispatch::Routing
#   class Mapper
#     def engine_routing
#       # define your routes here. You can use all the normal route DSL stuff
#       # these are inherited as app-level routes.
#       resources :failures, :controller => "oil_change/failures"
#       resources :dashboard, :controller => 'oil_change/dashboard'
#     end
#   end
# end

module Damn
  class Engine < Rails::Engine
    isolate_namespace Damn
  end
end

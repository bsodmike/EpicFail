Rails.application.routes.draw do
  get "simulate/failure"
  mount EpicFail::Engine => "/epic_fail", :as => "epic_fail_engine"
  engine_routing
end

EpicFail::Engine.routes.draw do
  # routes defined in /lib/epic_fail/engine.rb as per trick by workmad3
  root :to  => 'failures#index'
end

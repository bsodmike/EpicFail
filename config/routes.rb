Damn::Engine.routes.draw do
  get "failures/index"

  root :to  => 'failures#index'

end

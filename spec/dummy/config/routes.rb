Rails.application.routes.draw do

  get "simulate/failure"

  mount Damn::Engine => "/damn"
end

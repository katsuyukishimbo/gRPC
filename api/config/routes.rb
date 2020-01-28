Rails.application.routes.draw do
  get 'hello', to: 'application#hello'
  get 'index', to: 'home#index'
end

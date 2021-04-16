Rails.application.routes.draw do
  get 'mains/index'
  get 'tops/index'
  root to: 'tops#index'

  resources :tops do
    resources :main, only: [:index]
  end
end

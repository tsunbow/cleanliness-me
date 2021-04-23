Rails.application.routes.draw do
  get 'cleans/index'
  devise_for :users
  get 'mains/index'
  get 'tops/index'
  root to: 'tops#index'

  # resources :tops do
  #   resources :main, only: [:index]
  # end


  resource :clean, only: [:new, :create]
end

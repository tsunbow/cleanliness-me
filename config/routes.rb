Rails.application.routes.draw do
  get 'cleans/index'
  devise_for :users
  get 'mains/index'
  get 'tops/index'
  root to: 'tops#index'

  resources :cleans do
      resources :messages, only: [:create]
      resources :tasks, only: [:index, :create]
    end
  end
end

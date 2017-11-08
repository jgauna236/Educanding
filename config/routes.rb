Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show] do
    get :my_perfil, on: :collection
  end

  resources :questions do
    resources :answers, only: [:destroy, :create, :update]
  end

  get 'main/welcome'
  root "main#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

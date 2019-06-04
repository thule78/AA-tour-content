Rails.application.routes.draw do
  devise_for :users
  root to: 'contents#index'
  resources :contents, only: [:index, :show, :destroy, :new, :create, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

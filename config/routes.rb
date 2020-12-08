Rails.application.routes.draw do
  resources :batches
  resources :contacts
  devise_for :users

  root 'contacts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
  	member do
  		get 'accounts'
  	end
  end
  
  resources :accounts
end

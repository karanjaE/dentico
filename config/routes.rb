Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'clients#index'
  resources :clients do
    # resources :appointments
  end
end

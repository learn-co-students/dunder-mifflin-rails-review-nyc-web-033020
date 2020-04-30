Rails.application.routes.draw do
  resources :employees, only: [:index, :new, :create, :show, :edit, :update ]
  resources :dogs, only: [:index, :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'puestions#index'
  resources :puestions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

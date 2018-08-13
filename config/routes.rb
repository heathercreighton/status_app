Rails.application.routes.draw do
  root 'site_check#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :states
end

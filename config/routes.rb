Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'video#new'
  resources :video, only: [:new, :index, :show, :create]
end

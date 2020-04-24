Rails.application.routes.draw do
  devise_for :members
  resources :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "messages#index"

end

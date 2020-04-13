Rails.application.routes.draw do
  resources :users
  resources :comments
  #JME se agrego el do al de abajo y un end de lo contrario daba error de sintax
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resource :users do
    get "new"
    get "auth"
    post "login"
    post "create"
  end
  # get 'users/new'
  # get 'users/auth'
  # post 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :recipes
  post '/register_recipe/', to: "recipes#create_from_user"
  get '/my_recipes/', to: "recipes#index_from_user"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/search_recipe/', to: "recipes#search_recipe"
end

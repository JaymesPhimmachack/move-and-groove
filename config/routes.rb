Rails.application.routes.draw do
  root to: 'home#index'
  get '/home/blogs' => 'home#blogs'
  get '/home/recipes' => 'home#recipes'
  devise_for :users
  resources :activities, :blogs, :recipes
end

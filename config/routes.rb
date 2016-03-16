Rails.application.routes.draw do
  resources :articles
  resources :posts

  root to: "pages#index" 
end

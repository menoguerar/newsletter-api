Rails.application.routes.draw do
  get "topics/index2", to: "topics#index2"
  resources :newsletter_topics
  resources :newsletters
  resources :user_topics
  resources :topics
  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

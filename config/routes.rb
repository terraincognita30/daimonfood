Rails.application.routes.draw do
  root to: 'books#index'
  resources :books
  get '/about', to: 'pages#about', as: :about
  get '/readnext', to: 'pages#readnext', as: :read_next

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

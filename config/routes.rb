Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[create new destroy show] do
  resources :bookmarks, only: %i[create new]
  end
    resources :bookmarks, only: :destroy
    root to: 'list#index'
end

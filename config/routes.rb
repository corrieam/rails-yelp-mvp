Rails.application.routes.draw do
  get 'restaurants/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:create, :index, :show, :new] do
    resources :reviews, only: [:new, :create, :show]
  end

end

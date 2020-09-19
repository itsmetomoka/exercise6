Rails.application.routes.draw do
	root 'homes#top'
  devise_for :users
  get 'home/about' => 'homes#about'

  resources :books do
  	resource :favorites, only: [:create, :destroy]
  	resources :book_comments, only: [:create, :destroy]
 	end

 	resources :users do
    member do
     get :following, :followers
    end
    resource :relationships, only: [:create, :destroy]
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

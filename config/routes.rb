Rails.application.routes.draw do
	root 'homes#top'
  devise_for :users
  get 'homes' => 'homes#about'
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

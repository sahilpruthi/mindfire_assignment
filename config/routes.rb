Rails.application.routes.draw do
	root to: 'news#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :news do 
    member do 
      patch :increase_count
    end
    collection do
    	post :search
    end
  end
end

Rails.application.routes.draw do
  resources :fitpartners
  resources :friendships

  get 'dashboard/index'
  get 'welcome/index'
  get 'dashboard/show'

  devise_for :users, :controllers => { registrations: 'registrations' }

  	devise_scope :user do
  		authenticated :user do
    		root 'dashboard#index', as: :authenticated_root
  		end
  		unauthenticated do
    		root 'welcome#index', as: :unauthenticated_root
  		end
	end

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

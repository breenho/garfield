Rails.application.routes.draw do
  get 'dashboards/dashboard'

	# devise_for :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	devise_scope :user do
		authenticated :user do
			root 'dashboards#dashboard', as: :authenticated_root
		end

		unauthenticated do
			root 'devise/sessions#new', as: :unauthenticated_root
		end
	end
	devise_for :users, :controllers => { 
		omniauth_callbacks: 'users/omniauth_callbacks',
    	registrations: "users/registrations",
    	passwords: "users/passwords" #,
    	# sessions: 'users/sessions'
	}
	match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
	get "/users/:id/show" => "users#show", as: :user
end

Rails.application.routes.draw do

 	get "/", to: 'static_pages#home'
	get 'team' ,to: 'static_pages#team'
	get 'contact' ,to:'static_pages#contact'
	get 'welcome/:username' ,to: 'welcome#username', as: 'welcome'
	get 'city/:id',to: 'city#show', as: 'city'
	resources :gossip
	resources :user
 
end

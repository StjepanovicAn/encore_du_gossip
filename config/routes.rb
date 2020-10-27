Rails.application.routes.draw do

  get 'gossip/gossip'
  get 'welcome/username'
	get "/", to: 'static_pages#home'
	get 'team' ,to: 'static_pages#team'
	get 'contact' ,to:'static_pages#contact'
	get 'welcome/:username' ,to: 'welcome#username'
	get 'user' ,to: 'user#show_user'
	get 'gossip' ,to: 'gossip#gossip'
 
end

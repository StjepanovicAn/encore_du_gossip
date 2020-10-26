Rails.application.routes.draw do

  get 'welcome/username'
	get "/", to: 'static_pages#home'
	get 'team' ,to: 'static_pages#team'
	get 'contact' ,to:'static_pages#contact'
	get 'welcome/:username' ,to: 'welcome#username'
 
end

Rails.application.routes.draw do
  resources :coments
  resources :class_news
	root 'class_news#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

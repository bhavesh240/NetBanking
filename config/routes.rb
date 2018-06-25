Rails.application.routes.draw do
  #get 'users_details/index'
  get 'welcome/index'

  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :welcome

  resources :users_details do
    get 'verify',on: :member 
  end

  root 'welcome#index' 
end

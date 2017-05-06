Rails.application.routes.draw do
 

  devise_for :users
  resources :popular_institutes
  resources :top_tutors
  resources :contacts, only: [:new, :create, ] 




  get 'pages/about'

  get 'pages/team'

  root 'pages#home'




  resources :institutes
  resources :tutors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

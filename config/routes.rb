Rails.application.routes.draw do
 

  resources :popular_institutes
  resources :top_tutors
  get 'pages/about'

  get 'pages/team'

  root 'pages#home'




  resources :institutes
  resources :tutors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

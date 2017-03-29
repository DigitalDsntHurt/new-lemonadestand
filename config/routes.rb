Rails.application.routes.draw do
  resources :volunteers
  resources :educators
  
  get 'creatives/index'
  root 'creatives#index'

  get 'misc/educator_registration_conf'
  get 'misc/volunteer_registration_conf'
end

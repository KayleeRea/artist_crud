Rails.application.routes.draw do

  root to: 'artists#index'

  resources :artists

end

Rails.application.routes.draw do


  root 'site#home'
  get '/about', to: 'site#about', as: :about

  namespace :your_space do
    resources :users
  end

end

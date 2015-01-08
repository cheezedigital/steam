Rails.application.routes.draw do


  root 'site#home'
  get '/about', to: 'site#about', as: :about

  namespace :your_space do
    resources :users
  end

  namespace :word_cloud do
    resources :words, :only => [:index, :create]
  end

  namespace :word_clock do
    resources :page, :only => [:index]
  end
  
end

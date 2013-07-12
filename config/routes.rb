Practice::Application.routes.draw do
  
  resources :assignments

  match "about" => 'welcome#about', via: :get
  match "assignments" => 'welcome#assignments', via: :get

  root :to => 'welcome#index'

  end
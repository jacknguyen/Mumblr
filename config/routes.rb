Mumblr::Application.routes.draw do
  
  resources :comments, only: [:create, :destroy]
  resources :ideas
  root 'ideas#index'

end

Mumblr::Application.routes.draw do
  
  devise_for :users, path: '', path_names: {sign_in: 'register', sign_out: 'logout'}
  resources :comments, only: [:create, :destroy]
  resources :ideas
  root 'ideas#index'

end

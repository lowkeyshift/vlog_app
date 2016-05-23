Rails.application.routes.draw do

  root 'videos#index'
  
  devise_for :users do
    delete 'logout' => 'sessions#destroy', :as => :destroy_user_session
    get 'login' => 'devise/sessions#new'
  end
  resources :videos
  resources :posts do
    resources :comments
  end

  get 'pages/about'

  get 'pages/contact'

  get 'posts/index' => 'posts#index'
end

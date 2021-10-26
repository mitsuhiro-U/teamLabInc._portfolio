Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/'      => "homes#top"   , as: "top"
  get '/about' => "homes#about" , as: "about"

  resource :users, only: [:show, :edit, :update]
  get   'users/withdrawal'          => "users#withdrawal" , as: "withdrawal"
  patch 'users/withdrawal'   => "users#withdrawal" , as: "withdrawal_update"

  resource :reports, only: [:new, :show, :edit, :index, :update, :destroy]

end
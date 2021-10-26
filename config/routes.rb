Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/'      => "homes#top"   , as: "top"
  get '/about' => "homes#about" , as: "about"

  get   'user/show'          => "users#show"       , as: "users_show"
  get   'user/edit'          => "users#edit"       , as: "users_edit"
  patch 'user/edit'        => "users#update"     , as: "users_update"
  get   'user/withdrawal'   => "users#withdrawal" , as: "withdrawal"
  patch 'user/withdrawal'   => "users#withdrawal" , as: "withdrawal_update"

  resource :reports, only: [:new, :show, :edit, :update, :destroy]
  get   'reports/index'          => "reports#index" , as: "reports_index"
end
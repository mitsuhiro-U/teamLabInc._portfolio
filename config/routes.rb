Rails.application.routes.draw do
  get 'reports/new'
  get 'reports/show'
  get 'reports/edit'
  get 'reports/update'
  get 'reports/destroy'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/withdrawal'
  get 'users/withdrawal_update'
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

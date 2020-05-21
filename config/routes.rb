Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/new'
  get 'appointments/show'
  get 'appointments/edit'
  get 'doctors/index'
  get 'doctors/new'
  get 'doctors/show'
  get 'doctors/edit'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'users/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

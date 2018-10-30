Rails.application.routes.draw do
  resources :users, except: [:new]
  get :sign_in, to: 'users#sign_in'
  post :to_sign_in, to: 'users#to_sign_in'
  get :sign_up, to: 'users#sign_up'
  delete :sign_out, to: 'users#sign_out'
  get :forget_password, to: 'users#forget_password'
  root 'home#index'
end

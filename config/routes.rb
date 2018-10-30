Rails.application.routes.draw do
  resources :users
  get :sign_in, to: 'users#sign_in'
  post :to_sign_in, to: 'users#to_sign_in'
  get :sign_up, to: 'users#new'
  delete :sign_out, to: 'users#sign_out'
  get :forget_password, to: 'users#forget_password'
  root 'home#index'
end

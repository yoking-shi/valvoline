Rails.application.routes.draw do

  resources :users, except: [:new] do
    member do
      delete :sign_out
    end
    collection do
      post :to_sign_in
      put :change_password
    end
  end

  get :sign_in, to: 'users#sign_in'
  get :sign_up, to: 'users#sign_up'
  get :forget_password, to: 'users#forget_password'

  root 'home#index'
end

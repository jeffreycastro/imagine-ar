Rails.application.routes.draw do
  root 'static_pages#home'

  resources :static_pages, only: [], path: '/' do
    collection do
      get :home
      post :send_email
    end
  end

  resources :blogs, only: :show

  namespace :admin do
    resources :blogs do
      member do
        put :activate
        put :deactivate
      end
    end
  end
end

Rails.application.routes.draw do
  resources :static_pages, only: [], path: '/' do
    collection do
      get :home
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end

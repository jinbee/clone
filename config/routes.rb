Rails.application.routes.draw do


  resources :clones do
    collection do
      post :confirm
      get :confirm
      get :list
    end 
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
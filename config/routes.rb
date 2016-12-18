Rails.application.routes.draw do
  root 'welcome#index'

  resources :creatures do
    member do
      post 'clone'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

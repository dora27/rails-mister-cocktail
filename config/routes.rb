Rails.application.routes.draw do
  get 'doses/create'

  Rails.application.routes.draw do
  get 'doses/create'

   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :cocktails, only: [:index, :new, :show, :create] do
      resources :doses, only: [:create]
    end
    root "cocktails#index"
  end
end

Rails.application.routes.draw do
    get 'restaurants/index'
    resources :restaurants do
        resources :comments, :foods
    end
    root 'restaurants#index'
    #root :to => "restaurants#show", :id => '1'   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

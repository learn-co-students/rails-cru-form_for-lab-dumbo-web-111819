Rails.application.routes.draw do
  resources :artists, except: [:destory]
  resources :genres, except: [:destory]
  resources :songs, except: [:destory]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

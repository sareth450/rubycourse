Rails.application.routes.draw do
get '/months/:id', to: 'months#show' 
resources :months #wlaczenie trasowanie RESTfulowego 
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :challenges do
  resources :steps
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/' => 'users#index'
get '/index.html' => 'users#index'

# These routes will be for signup. The first renders a form in the browse, the second will
# receive the form and create a user in our database using the data given to us by the user.
get '/login' => 'sessions#login'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'

get '/signup' => 'users#signup'
post '/users' => 'users#create'


end

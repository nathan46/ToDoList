Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'welcome#index'
    get '/api/all' => 'api#all'
    get '/api/one'  => 'api#one'
    get '/api/two'  => 'api#two'
end

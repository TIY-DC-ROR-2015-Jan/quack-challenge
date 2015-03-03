Rails.application.routes.draw do
  post '/repeat' => 'application#repeat'
  root 'application#home'
end

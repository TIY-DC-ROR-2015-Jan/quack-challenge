Rails.application.routes.draw do
 
 root 'application#home'
 get '/repeat' => 'application#repeat'
end

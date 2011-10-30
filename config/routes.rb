Character::Engine.routes.draw do

  root :to => 'profiles#show'
  match '/blah' => 'profiles#show', :as => 'blah'
  resource :profile

end

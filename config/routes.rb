Rails.application.routes.draw do
  root 'workshops#index'
  get 'workshops/:id' => 'workshops#show', as: 'workshop'
  post 'user_workshops/:workshop_id' => 'user_workshops#create', as: 'create_user_workshop'
  post 'workshops/:id/post' => 'posts#create', as: 'workshop_post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

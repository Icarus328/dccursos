Rails.application.routes.draw do



  get 'aulas/new'
  post 'aulas', to: 'aulas#create'
  get 'aulas/index'
  get 'aulas/show'
  get 'aulas/edit'
  patch 'aulas/update', to: 'aulas#update', as: 'aulas_update'
  delete 'aulas/delete', to: 'aulas#delete', as: 'aulas_delete'

  get 'mainpage', to: 'mainpage#index', as: 'mainpage_index'
  root to: 'mainpage#index'

  get 'cursos/new'
  post 'cursos', to: 'cursos#create'
  get 'cursos/index'
  get 'cursos/show'
  get 'cursos/edit'
  patch 'cursos/update', to: 'cursos#update', as: 'cursos_update'
  delete 'cursos/delete', to: 'cursos#delete', as: 'cursos_delete'
  
  
  get 'reviews/new'
  post 'reviews', to: 'reviews#create'
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/edit'
  patch 'reviews/update', to: 'reviews#update', as: 'reviews_update'
  delete 'reviews/delete', to: 'reviews#delete', as: 'reviews_delete'

  get 'questions/new'
  post 'questions', to: 'questions#create'

  get 'questions/index'
  get 'questions/show'

  get 'questions/edit'
  patch 'questions/update', to: 'questions#update', as: 'questions_update'

  delete 'questions/delete', to: 'questions#delete', as: 'questions_delete'


  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations'
  }, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}


  get "users/:id", to: "users#show", as: "users_show"

  root "articles#index"

  get "/articles", to: "articles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

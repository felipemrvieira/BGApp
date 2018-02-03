Rails.application.routes.draw do
  resources :posts
  root 'pages#home'

  get 'aluno/novo', to: 'alunos#new'
  resources :alunos, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end

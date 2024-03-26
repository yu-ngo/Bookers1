Rails.application.routes.draw do
  get 'books/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'books'=>'books#create'
  get 'books'=>'books#index'
  get 'books/:id/edit'=>'books#edit', as: 'edit_book'
  get '/top'=>'homes#top'
  get 'books/:id'=>'books#show', as: 'book'
  patch 'books/:id'=>'books#update', as: 'update_book'
  delete 'lists/:id'=>'lists#destroy', as: 'destroy_list'
end

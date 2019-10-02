Rails.application.routes.draw do


  get 'students/library_list'
  get 'students/books'
  post 'students/history_request', to: 'students#history_request', as: :students_history_request
  post 'students/bookmark', to: 'students#bookmark', as: :students_bookmark
  post 'students/book_return', to: 'students#book_return', as: :students_book_return
  post 'students/delete_reservation', to: 'students#book_delete_reservation', as: :students_book_delete_reservation

  get 'admin/index'
  resources :libraries
  resources :books

  get 'books/index'
  get 'books/delete'
  post 'books/delete'
  get 'books/show'

  get 'books/edit'
  get 'books/show'
  post 'books/show'

  get 'libraries/edit'
  get 'libraries/index'
  post '/sessions/create'
  get 'sessions/destroy'

  post 'login/new'
  get 'login/index'
  post 'login/index'
  post 'login/search'

  get 'admins/index'
  get 'admins/login'
  post 'admins/login'
  get 'admins/allstudents'
  get 'admins/delete'
  post 'admins/delete'
  get 'admins/books_on_hold'
  get 'admins/checked'
  get 'admins/borrow_history'
  get 'admins/overdue'

  get 'librarians/login'
  post 'librarians/login'
  get 'librarians/books'
  post 'librarians/books'
  get 'librarians/show'
  post 'librarians/show'
  post  'librarians/destroy'
  get 'librarians/checkedout_request', to: 'librarians#checkedout_request', as: :librarians_checkedout_request
  get 'librarians/borrow', to: 'librarians#borrow', as: :librarians_borrow

  get 'students/index'
  post 'students/create'
  post 'students/index'
  get 'students/login'
  post 'students/login'
  get 'students/delete'
  post 'students/delete'
  get 'students/:id/edit', to: 'students#edit', as: :edit_student
  patch 'students/:id', to: 'students#update'
  get 'students/show'

  resources :students
  resources :login
  resources :sessions
  resources :librarians
  resources :libraries
  resources :books
  resources :admins

  root 'login#index'


end

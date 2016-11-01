Rails.application.routes.draw do
  get "posts/list" =>  "post#list"
  get "posts/new" => "post#new"
  post "posts/create" => "post#create"
  patch "posts/update" => "post#update"
  get "posts/show" => "post#show"
  get "posts/edit" => "post#edit"
  get "posts/delete" => "post#delete"
  get "posts/update" => "post#update"
  get "posts/show_subjects" => "post#show_subjects"
  root 'post#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

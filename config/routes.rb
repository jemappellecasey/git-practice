Rails.application.routes.draw do
  get 'pages/home'
@posts = Blog.all 
  get 'pages/about'

  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

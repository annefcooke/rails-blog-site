Rails.application.routes.draw do
  get '/about', to: 'misc#about', as: 'about'
  get '/contact', to: 'misc#contact', as: 'contact'
  get '/faq', to: 'misc#faq', as: 'faq'
  get '/terms', to: 'misc#terms', as: 'terms'
  get '/', to: 'misc#index', as: 'index'
  resources :posts do
    resources :comments
  end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

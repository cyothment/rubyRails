Rails.application.routes.draw do

	root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end

 	get 'demo/index'
 	get 'test_controller/index'
 	get 'demo/hello'
 	get 'demo/other_hello'
 	get 'demo/lynda'

	
    #Default router - will probably go away in the future
  	#get ':controller(/:action(/:id))'
  	#get ':controller(/:action(/:page(/:id)))'

 	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

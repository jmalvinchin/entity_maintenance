module EntityMaintenance
  Engine.routes.draw do
    namespace :api do
      resources :people, :only => [:index, :show]
      resources :organizations, :only => [:index, :show]
    end
  end
end

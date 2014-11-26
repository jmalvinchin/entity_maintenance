module EntityMaintenance
  Engine.routes.draw do
    resources :entities do
      resources :addresses, :only => [:new, :edit, :create, :update, :destroy]
      resources :contact_infos, :only => [:new, :edit, :create, :update, :destroy]
    end

    namespace :api do
      resources :people, :only => [:index, :show]
      resources :organizations, :only => [:index, :show]
    end
  end
end

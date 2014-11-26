require 'rails_helper'

module EntityMaintenance
  RSpec.describe EntitiesController, :type => :routing do
    describe 'routing' do

      routes { EntityMaintenance::Engine.routes }

      it 'routes to #index' do
        expect(:get => '/entities').to route_to(:controller => 'entity_maintenance/entities',
                                                :action => 'index')
      end

      it 'routes to #new' do
        expect(:get => '/entities/new').to route_to(:controller => 'entity_maintenance/entities',
                                                    :action => 'new')
      end

      it 'routes to #show' do
        expect(:get => '/entities/1').to route_to(:controller => 'entity_maintenance/entities',
                                                  :action => 'show', :id => '1')
      end

      it 'routes to #edit' do
        expect(:get => '/entities/1/edit').to route_to(:controller => 'entity_maintenance/entities',
                                                       :action => 'edit', :id => '1')
      end

      it 'routes to #create' do
        expect(:post => '/entities').to route_to(:controller => 'entity_maintenance/entities',
                                                 :action => 'create')
      end

      it 'routes to #update' do
        expect(:put => '/entities/1').to route_to(:controller => 'entity_maintenance/entities',
                                                  :action => 'update', :id => '1')
      end

      it 'routes to #destroy' do
        expect(:delete => '/entities/1').to route_to(:controller => 'entity_maintenance/entities',
                                                     :action => 'destroy', :id => '1')
      end

    end
  end
end

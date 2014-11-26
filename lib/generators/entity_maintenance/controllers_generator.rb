module EntityMaintenance
  class ControllersGenerator < Rails::Generators::Base
    def copy_controllers
      ControllersGenerator.source_root File.expand_path('../../../../app/controllers', __FILE__)
      directory 'entity_maintenance', 'app/controllers/entity_maintenance'
    end
  end
end

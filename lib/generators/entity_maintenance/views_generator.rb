module EntityMaintenance
  class ViewsGenerator < Rails::Generators::Base
    def set_root
      ViewsGenerator.source_root File.expand_path('../../../../app', __FILE__)
    end

    def copy_views
      directory 'views/entity_maintenance', 'app/views/entity_maintenance'
    end

    def copy_assets
      directory 'assets/stylesheets/entity_maintenance', 'app/assets/stylesheets/entity_maintenance'
      directory 'assets/javascripts/entity_maintenance', 'app/assets/javascripts/entity_maintenance'
    end
  end
end

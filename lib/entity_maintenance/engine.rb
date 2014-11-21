module EntityMaintenance
  class Engine < ::Rails::Engine
    isolate_namespace EntityMaintenance

    config.generators do |g|
      g.template_engine :haml

      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/support/factories'
    end
  end
end

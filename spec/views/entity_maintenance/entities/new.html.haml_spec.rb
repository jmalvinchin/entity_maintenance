require 'rails_helper'
include EntityMaintenance::Engine.routes.url_helpers

RSpec.describe 'entity_maintenance/entities/new', :type => :view do
  before(:each) do
    assign(:entity, EntityMaintenance::Entity.new)
  end

  it 'renders new entity form' do
    render

    assert_select 'form[action=?][method=?]', entities_path, 'post' do
    end
  end
end

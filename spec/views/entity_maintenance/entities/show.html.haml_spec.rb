require 'rails_helper'
include EntityMaintenance::Engine.routes.url_helpers

RSpec.describe 'entity_maintenance/entities/show', :type => :view do
  before(:each) do
    @entity = assign(:entity, create(:person))
  end

  it 'renders attributes in <p>' do
    render
  end
end

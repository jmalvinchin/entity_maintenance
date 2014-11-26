require 'rails_helper'
include EntityMaintenance::Engine.routes.url_helpers

RSpec.describe 'entity_maintenance/entities/edit', :type => :view do
  before(:each) do
    @entity = assign(:entity, create(:person))
  end

  it 'renders the edit entity form' do
    render

    assert_select 'form[action=?][method=?]', entity_path(@entity), 'post' do
    end
  end
end

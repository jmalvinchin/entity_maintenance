module EntityMaintenance
  class Api::OrganizationsController < EntityMaintenance::ApplicationController
    def index
      @organizations = Organization.order(:name)
    end

    def show
      @organization = Organization.find(params[:id])
    end
  end
end

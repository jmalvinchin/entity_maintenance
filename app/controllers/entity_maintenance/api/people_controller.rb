module EntityMaintenance
  class Api::PeopleController < EntityMaintenance::ApplicationController
    def index
      @people = Person.order(:last_name)
    end

    def show
      @person = Person.find(params[:id])
    end
  end
end

module EntityMaintenance
  class EntitiesController < EntityMaintenance::ApplicationController
    before_action :set_entity, :only => [:show, :edit, :update, :destroy]

    # GET /entities
    def index
      @people = Person.order(:last_name)
      @orgs = Organization.order(:name)
    end

    # GET /entities/1
    def show
    end

    # GET /entities/new
    def new
      @entity = Entity.new
      @entity.type = params[:type] if params[:type].present?
    end

    # GET /entities/1/edit
    def edit
    end

    # POST /entities
    def create
      @entity = Entity.new(entity_params)

      if @entity.save
        redirect_to entity_path(@entity), :notice => 'Entity was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /entities/1
    def update
      if @entity.class == EntityMaintenance::Person && @entity.update(person_params)
        redirect_to entity_path(@entity), :notice => 'Person was successfully updated.'
      elsif @entity.class == EntityMaintenance::Organization && @entity.update(organization_params)
        redirect_to entity_path(@entity), :notice => 'Organization was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /entities/1
    def destroy
      @entity.destroy
      redirect_to entities_url, :notice => 'Entity was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entity_params
      params.require(:entity).permit(:first_name,
                                     :middle_name,
                                     :last_name,
                                     :prefix,
                                     :name,
                                     :industry,
                                     :type)
    end

    def person_params
      params.require(:person).permit(:first_name,
                                     :middle_name,
                                     :last_name,
                                     :prefix,
                                     :type)
    end

    def organization_params
      params.require(:organization).permit(:name,
                                           :industry,
                                           :type)
    end
  end
end

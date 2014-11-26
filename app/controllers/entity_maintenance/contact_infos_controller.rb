module EntityMaintenance
  class ContactInfosController < EntityMaintenance::ApplicationController
    before_action :set_entity, :only => [:new, :create, :edit, :update, :destroy]
    before_action :set_contact_info, :only => [:edit, :update, :destroy]

    def new
      @entity = Entity.find(params[:entity_id])
      @contact_info = ContactInfo.new(:entity => @entity)
      puts @contact_info
    end

    def create
      @contact_info = ContactInfo.new(contact_info_params)

      if @contact_info.save
        redirect_to entity_path(@entity), :notice => 'Contact Info was successfully created.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @contact_info.update(contact_info_params)
        redirect_to entity_path(@entity), :notice => 'Contact Info was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @contact_info.destroy
      redirect_to entity_path(@entity), :notice => 'Contact Info was successfully destroyed.'
    end

    private

    def set_contact_info
      @contact_info = ContactInfo.find(params[:id])
    end

    def set_entity
      @entity = Entity.find(params[:entity_id])
    end

    def contact_info_params
      params.require(:contact_info).permit(:contact_person,
                                           :contact_number,
                                           :contact_type,
                                           :entity_id)
    end
  end
end

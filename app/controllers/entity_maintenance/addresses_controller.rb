module EntityMaintenance
  class AddressesController < EntityMaintenance::ApplicationController
    before_action :set_entity, :only => [:new, :create, :edit, :update, :destroy]
    before_action :set_address, :only => [:edit, :update, :destroy]

    def new
      @entity = Entity.find(params[:entity_id])
      @address = Address.new(:entity => @entity)
      puts @address
    end

    def create
      @address = Address.new(address_params)

      if @address.save
        redirect_to entity_path(@entity), :notice => 'Address was successfully created.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @address.update(address_params)
        redirect_to entity_path(@entity), :notice => 'Address was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @address.destroy
      redirect_to entity_path(@entity), :notice => 'Address was successfully destroyed.'
    end

    private

    def set_address
      @address = Address.find(params[:id])
    end

    def set_entity
      @entity = Entity.find(params[:entity_id])
    end

    def address_params
      params.require(:address).permit(:line_1,
                                      :line_2,
                                      :city,
                                      :province_or_state,
                                      :country,
                                      :zipcode,
                                      :entity_id)
    end
  end
end

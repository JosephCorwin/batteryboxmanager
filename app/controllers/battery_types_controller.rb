class BatteryTypesController < ApplicationController
  
  def index
    @battery_types = BatteryType.paginate(page: params[:page])
  end

  def new
    @battery_type = BatteryType.new
  end

  def edit
    @battery_type = BatteryType.find(params[:id])
  end

  def show
    @battery_type = BatteryType.find(params[:id])
  end

  def create
    @battery_type = BatteryType.new(params.require(:battery_type).permit(:name, 
																		 :description, 
																		 :cell_type, 
																		 :cell_count, 
																		 :bms_present, 
																		 :nominal_voltage, 
																		 :minimum_voltage, 
																		 :maximum_voltage, 
																		 :amp_hours,
																		 :output_connector_type, 
																		 :charging_connector_type, 
																		 :case_material, 
																		 :padding_type,
																		 :width,
																		 :length,
																		 :height,
																		 :weight))
    if @battery_type.save
      flash[:success] = "Battery Type Added!"
      redirect_to @battery_type
    else
      render 'new'
    end
  end

  def update
  	@battery_type = BatteryType.find(params[:id])
  	if @battery_type.update(params.require(:battery_type).permit(:name, 
																 :description, 
																 :cell_type, 
																 :cell_count, 
																 :bms_present, 
																 :nominal_voltage, 
																 :minimum_voltage, 
																 :maximum_voltage, 
																 :amp_hours,
																 :output_connector_type,
																 :charging_connector_type, 
																 :case_material, 
																 :padding_type,
																 :width,
																 :length,
																 :height,
																 :weight))
  		flash[:success] = "Battery Type Updated"
  		redirect_to @battery_type
  	else
  		render 'edit'
    end
  end

  def destroy
  	@battery_type = BatteryType.find(params[:id])
  	if @battery_type.destroy
      redirect_to battery_type_path
    end
  end

private

    def battery_type_params
      params.require(:battery).permit(   :name, 
										 :description, 
										 :cell_type, 
										 :cell_count, 
										 :bms_present, 
										 :nominal_voltage, 
										 :minimum_voltage, 
										 :maximum_voltage, 
										 :amp_hours)
    end

end


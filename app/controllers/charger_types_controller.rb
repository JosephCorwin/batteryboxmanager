class ChargerTypesController < ApplicationController

  def index
    @charger_types = ChargerType.paginate(page: params[:page])
  end

  def new
    @charger_type = ChargerType.new
  end

  def edit
    @charger_type = ChargerType.find(params[:id])
  end

  def show
    @charger_type = ChargerType.find(params[:id])
  end

  def create
    @charger_type = ChargerType.new(params.require(:charger_type).permit(:name, :description, :voltage_output, :amperage_output, :grounded))
    if @charger_type.save
      flash[:success] = "Charger Type Added!"
      redirect_to @charger_type
    else
      render 'new'
    end
  end

  def update
  	@charger_type = ChargerType.find(params[:id])
  	if @charger_type.save
  		flash[:success] = "Charger Type Updated"
  		redirect_to @charger_type
  	else
  		render 'edit'
    end
  end

  def destroy
  	@charger_type = ChargerType.find(params[:id])
  	if @charger_type.destroy
      redirect_to charger_types_path
    end
  end

private

    def charger_params
      params.require(:charger).permit()
    end

end

class BatteriesController < ApplicationController

  def index

    @batteries = Battery.paginate( page: params[:page] )

  end

  def new

    @battery = Battery.new
    @rider   = Rider.find_by_id( params[:rider_id] )

  end

  def edit

    @battery = Battery.find( params[:id] )
    @rider   = @battery.rider

  end

  def show

    @battery = Battery.find( params[:id] )
    @rider   = @battery.rider

  end

  def create

    @battery = Battery.new( params.require(:battery).permit(:lbid, 
    													                   :battery_type_id, 
    													                               :age,
    													                   :input_connector,
    													                  :output_connector,
    													                      :padding_type,
    													                     :case_material,
    													                             :notes ))
    @battery.rider_id = params[:rider_id]

    if @battery.save

      flash[:success] = "Battery Added!"
      redirect_to @battery

    else

      render 'new'

    end

  end

  def update

  	@battery = Battery.find( params[:id] )

  	if @battery.update( params.require(:battery).permit(:lbid, 
													                   :battery_type_id, 
													                               :age,
													                   :input_connector,
													                  :output_connector,
													                      :padding_type,
													                     :case_material,													   
													                             :notes ))
  		flash[:success] = "Battery Updated"
  		redirect_to @battery

  	else

  		render 'edit'

    end

  end

  def destroy

  	@battery = Battery.find(params[:id])

  	if @battery.destroy

      redirect_to batteries_path

    end

  end

private

    def battery_params
      params.require(:battery).permit(:lbid, :battery_type_id, :rider_id, :inspection_grade, :rental, :rental_owner)
    end

end


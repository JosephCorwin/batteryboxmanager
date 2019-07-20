class ChargersController < ApplicationController

  def index

    @chargers = Charger.paginate( page: params[:page] )

  end

  def new

    @charger = Charger.new
    @rider   = Rider.find_by_id( params[:rider_id] )

  end

  def edit

    @charger = Charger.find( params[:id] )
    @rider   = @charger.rider

  end

  def show

    @charger = Charger.find( params[:id] )
    @rider   = @charger.rider

  end

  def create

   @charger = Charger.new( params.require(:charger).permit(:lbid, 
                                                 :charger_type_id, 
                                                  :connector_type ))
    @charger.rider_id = params[:rider_id]

    if @charger.save

      flash[:success] = "Charger Added!"
      redirect_to @charger

    else

      render 'new'

    end

  end

  def update

  	@charger = Charger.find(params[:id])
    
  	if @charger.update( params.require( :charger ).permit( :lbid, 
                                                :charger_type_id, 
                                                       :rider_id, 
                                                 :connector_type ))

  		flash[:success] = "Charger Updated"
  		redirect_to @charger

  	else

  		render 'edit'

    end
  end

  def destroy

  	@charger = Charger.find( params[:id] )

  	if @charger.destroy

      redirect_to chargers_path

    end

  end

private

    def charger_params
      params.require(:charger).permit(:lbid, :charger_type_id, :rider_id)
    end

end

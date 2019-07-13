class RidersController < ApplicationController

  def index
    @riders = Rider.paginate(page: params[:page])
  end

  def new
    @rider = Rider.new
  end

  def edit
    @rider = Rider.find(params[:id])
  end

  def show
    @rider = Rider.find(params[:id])
  end

  def create
    @rider = Rider.new(params.require(:rider).permit(:name, :lbid, :phone_number, :email))
    if @rider.save
      flash[:success] = "Rider Added!"
      redirect_to @rider
    else
      render 'new'
    end
  end

  def update
  	@rider = Rider.find(params[:id])
  	@rider.name = params[:name]
  	if @rider.save
  		flash[:success] = "Rider Updated"
  		redirect_to @rider
  	else
  		render 'edit'
    end
  end

  def destroy
  	@rider = Rider.find(params[:id])
    if @rider.batteries
      @rider.batteries.each do |b|
        b.destroy
      end
    end 
    if @rider.chargers
      @rider.chargers.each do |c|
      c.destroy
      end
    end
  	if @rider.destroy
      redirect_to riders_path
    end
  end

private

    def rider_params
      params.require(:rider).permit(:name, :lbid, :phone_number, :email)
    end

end

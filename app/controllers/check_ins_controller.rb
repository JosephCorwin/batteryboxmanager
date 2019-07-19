class CheckInsController < ApplicationController

	def index
		@check_ins = CheckIn.all()
	end

	def new
		@check_in = CheckIn.new
	end

	def edit
		@check_in = CheckIn.find(params[:id])
	end

	def show
		@check_in = CheckIn.find(params[:id])
	end

	def create
		@check_in = CheckIn.new(params.require(:check_in).permit(:rider_id, :battery_id, :charger_id))
		if @check_in.save
			Log.create(rider_id:   @check_in.rider_id,
					   battery_id: @check_in.battery_id,
					   charger_id: @check_in.charger_id,
					   section_id: @check_in.section_id,
					   log_type:   "Check In")
			redirect_to root_path
		end
	end

	def update
		@check_in = CheckIn.find(params[:id])
		if @check_in.update(params.require(:check_in).permit(:rider_id, :battery_id, :charger_id))
			redirect_to root_path
		end
	end

	def destroy
		@check_in = CheckIn.find(params[:id])
		Log.create(rider_id:   @check_in.rider_id,
				   battery_id: @check_in.battery_id,
				   charger_id: @check_in.charger_id,
				   section_id: @check_in.section_id,
				   log_type:   "Check Out")
		@check_in.destroy
		redirect_to request.referrer
	end

end


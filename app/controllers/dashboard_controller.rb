class DashboardController < ApplicationController

   def index
   	  @check_ins = CheckIn.count
   	  @search = Search.new
   end

   def search
      @search = Search.new(params.require(:search).permit(:rider,:battery,:charger))
      if not @search.rider.empty?
      	search_result = Rider.find_by_lbid(@search.rider)
      elsif not @search.battery.empty?
      	search_result = Battery.find_by_lbid(@search.battery)
      elsif not @search.charger.empty?
      	search_result = Charger.find_by_lbid(@search.charger)
      else
      	search_result = nil
      end
      redirect_to search_result if search_result
  end
      		

end

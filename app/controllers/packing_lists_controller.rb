class PackingListsController < ApplicationController
  before_action :find_trip

  def new
    @packing_list = PackingList.new
  end

  def create
    packing_list_params = params.require(:packing_list).permit!
    @packing_list = @trips.packing_lists.new(packing_list_params)
    @packing_list.user = current_user
    if @packing_list.save
     redirect_to @trips, notice: "You have added an item!"
    else
      render "new"
    end
  end

  def find_trip
    @trips = Trip.find_by(id: params["trip_id"])
  end

end

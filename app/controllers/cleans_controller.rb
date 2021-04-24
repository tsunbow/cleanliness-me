class CleansController < ApplicationController
  def index
  end

  def new
    @clean = Clean.new
  end

  def create
    @clean = Clean.new(clean_params)
  end


  private

  def clean_params
    params.require(:clean).permit(:image, :clean_name, :text, :cleaning_place, :status_id, :support_id, :important_id).merge(user_id: current_user.id)
  end

end

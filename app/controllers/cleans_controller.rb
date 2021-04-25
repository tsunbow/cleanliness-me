class CleansController < ApplicationController
  def index
    @cleans = Clean.order("created_at DESC")
  end

  def new
    @clean = Clean.new
  end

  def create
    @clean = Clean.new(clean_params)
    if @clean.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def clean_params
    params.require(:clean).permit(:image, :clean_name, :text, :cleaning_place, :status_id, :support_id, :important_id).merge(user_id: current_user.id)
  end

end

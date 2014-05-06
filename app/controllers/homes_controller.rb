class HomesController < ApplicationController
  #before_action :set_home, only: [:show, :edit, :update, :destroy]

  # GET /homes
  # GET /homes.json
  def events
  end

  def contact_us
  end

  def management_info
  end
  
  def index
    @user = User.new
  end

  def amenities
  end

  def get_involved
  end

  def rules
  end

  def add_user_information
    user = User.new(params[:home])
    user.save!
    respond_to do |format|
      format.json {render json: '1'}
    end
  end

  def user_attributes
    params.require(:home).permit(:first_name, :last_name, :email, :phone_number)
  end
end

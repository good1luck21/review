class UserWorkshopsController < ApplicationController
  def create
    @user_workshop = UserWorkshop.create(user_id: current_user.id, workshop_id: params[:workshop_id])
    redirect_to workshop_path(params[:workshop_id])
  end
end

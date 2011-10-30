class Character::ProfilesController < ApplicationController

  def new 
    if params[:user_id]
      @profile = User.find(params[:user_id]).build_profile
    elsif current_user
      @user = current_user
      @profile = User.find(current_user.id).build_profile
    end
  end
  def edit 
    if params[:user_id]
      @profile = User.find(params[:user_id]).profile 
    elsif current_user
      @user = current_user
      @profile = User.find(current_user.id).profile
    end
  end
  def update
    if params[:user_id]
      @profile = User.find(params[:user_id]).profile 
    elsif current_user
      @profile = User.find(current_user.id).profile
    end
    if @profile.update_attributes!(params[:user_profile])
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  def show 
    if params[:user_id]
      @profile = User.find(params[:user_id]).profile || User.find(params[:user_id]).build_profile
    elsif current_user
      @profile = UserProfile.find_or_create_by_user_id(current_user.id)
    end
  end
end

class FavoritePropertiesController < ApplicationController

  def show
    if current_user
      favorite_properties = FavoriteProperty.all.select {|fp| fp.user == current_user}.map {|fp| fp.property}
      render json: favorite_properties
    else 
      render json: {message: "Please log in"}
    end
  end

  def create
    fp = FavoriteProperty.create(user_id: current_user.id, property_id: params[:property_id])
    render json: fp
  end

  def destroy
    # byebug
      favorite_property = FavoriteProperty.all.find {|fp| fp.property.id == params[:id].to_i && fp.user.id == current_user.id}
      favorite_property.destroy
      render json: {message: "successful unsaved"}
  end
end
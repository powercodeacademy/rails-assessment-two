class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to vendors_path, alert: "Sweet not found"
  end

end

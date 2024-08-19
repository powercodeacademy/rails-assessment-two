class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to vendors_path, alert: "Vendor not found"
  end

end

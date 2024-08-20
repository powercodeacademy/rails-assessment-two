class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor_sweet = @vendor.vendor_sweets.build
  rescue ActiveRecord::RecordNotFound
    redirect_to vendors_path, alert: "Vendor not found"
  end
end

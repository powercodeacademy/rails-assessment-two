class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end
  
  def show
    @vendor = Vendor.find(params[:id])
    @sweets = Sweet.all
    @vendor_sweet = VendorSweet.new
  end

end

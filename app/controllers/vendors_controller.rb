class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor_sweets = @vendor.vendor_sweets
    @vendor_sweet = VendorSweet.new(vendor: @vendor)
  end

end

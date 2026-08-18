class VendorSweetsController < ApplicationController
  def create
    @vendor = Vendor.find(params[:vendor_id])
    @vendor_sweet = @vendor.vendor_sweets.new(vendor_sweet_params)
    @vendor_sweet.save
    redirect_to vendor_path(@vendor)
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:sweet_id, :comment)
  end
end
class VendorSweetsController < ApplicationController
  def create
    @vendor = Vendor.find(vendor_sweet_params[:vendor_id])
    @vendor_sweet = @vendor.vendor_sweets.build(vendor_sweet_params)

    if @vendor_sweet.save
      redirect_to vendor_path(@vendor)
    else
      render 'vendors/show'
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:sweet_id, :comment, :vendor_id)
  end
end

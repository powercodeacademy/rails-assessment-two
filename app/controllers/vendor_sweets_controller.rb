class VendorSweetsController < ApplicationController
  def create
    vendor_sweet = VendorSweet.new(vendor_sweet_params)

    if vendor_sweet.save
      redirect_to Vendor.find(vendor_sweet_params[:vendor_id])
    else

    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end
end

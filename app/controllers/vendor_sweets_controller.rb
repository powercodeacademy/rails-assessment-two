class VendorSweetsController < ApplicationController

  def create
    vendor_sweet = VendorSweet.create(vendor_sweets)

    redirect_to vendor_path(vendor_sweet.vendor)
  end

  private

  def vendor_sweets
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end
end

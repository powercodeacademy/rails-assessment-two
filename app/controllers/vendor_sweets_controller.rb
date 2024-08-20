class VendorSweetsController < ApplicationController
  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    @vendor = @vendor_sweet.vendor

    if @vendor_sweet.save
      redirect_to vendor_path(@vendor)
    else
      render "vendors/show"
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end
end

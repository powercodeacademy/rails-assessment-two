class VendorSweetsController < ApplicationController
  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)

    if @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor)
    else
      @vendor = Vendor.find(params[:vendor_sweet][:vendor_id])
      render "vendors/show", status: :unprocessable_entity
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end
end
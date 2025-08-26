class VendorSweetsController < ApplicationController
  
  def create
       @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    if @vendor_sweet.save
     redirect_to vendor_path(@vendor_sweet.vendor)
    else
       @vendor = Vendor.find_by(id: vendor_sweet_params[:vendor_id])
       
       @sweets = Sweet.all
       
      render 'vendors/show'
  end
end

  private 

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end
end

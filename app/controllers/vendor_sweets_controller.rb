class VendorSweetsController < ApplicationController 
  def new 
    @vendor_sweet = VendorSweet.new 
    @vendors = Vendor.all 
    @sweets = Sweet.all 
  end

  def create 
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)
    redirect_to vendor_path(@vendor_sweet.vendor) if @vendor_sweet.save 
  end 

  private 

  def vendor_sweet_params 
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :comment)
  end

end

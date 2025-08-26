class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]
  def index
    @vendors = Vendor.all
  end

  def show
    @new_vendor_sweet_comment = @vendor.vendor_sweets.build
  end

  def update
    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      @new_vendor_sweet_comment = @vendor.vendor_sweets.build
      render :show
    end
  end

private
  def set_vendor
      @vendor = Vendor.find(params[:id])
  end

  def vendor_params
    params.require(:vendor).permit(vendor_sweets_attributes: [:sweet_id, :vendor_id, :comment])
  end
end

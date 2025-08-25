class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]
  def index
    @vendors = Vendor.all
  end

  def show
    @vendor.vendor_sweets.build
  end

  def update
    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render :show
    end
  end

private
  def set_vendor
      @vendor = Vendor.find(params[:id])
  end

  def vendor_params
    params.require(:vendor).permit(vendor_sweets_attributes: [:sweet_id])
  end
end

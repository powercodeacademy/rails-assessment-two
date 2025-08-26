class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
    @sweets = Sweet.all
    @vendor_sweet = VendorSweet.new
  end


  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to @vendor
    else
      render :show
    end
  end

  def edit
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to @vendor
    else
      render :edit
    end
  end

  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
    flash[:notice] = "Vendor deleted."
    redirect_to vendors_path
  end

  private 

  def vendor_params
    params.require(:vendor).permit(:name)
  end
end

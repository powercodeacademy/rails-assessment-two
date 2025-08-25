class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]
  def index
    @vendors = Vendor.all
  end

  def show
  end

private
  def set_vendor
      @vendor = Vendor.find(params[:id])
  end
end

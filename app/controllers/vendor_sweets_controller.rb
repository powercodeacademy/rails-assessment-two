class VendorSweetsController < ApplicationController
  def create
    return redirect_to vendor_path(vendor_sweet_params[:vendor_id]), alert: 'Invalid Parameters' unless valid_params?

    VendorSweet.find_or_create_by!(vendor_sweet_params)
    redirect_to vendor_path(vendor_sweet_params[:vendor_id]), notice: 'Sweet Added'
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:sweet_id, :vendor_id, :comment)
  end

  def valid_params?
    !vendor_sweet_params[:comment]&.blank? && !vendor_sweet_params[:sweet_id]&.blank?
  end
end

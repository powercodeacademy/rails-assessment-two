class VendorSweetsController < ApplicationController

  def create
    @vendor_sweet = VendorSweet.new(vendor_sweet_params)

    if @vendor_sweet.save
      redirect_to vendor_path(@vendor_sweet.vendor)
    else
      redirect_to vendor_path(@vendor_sweet.vendor),
                  alert: @vendor_sweet.errors.full_messages.to_sentence
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(
      :vendor_id,
      :sweet_id,
      :comment
    )
  end
end
class SweetsController < ApplicationController
  before_action :set_sweet, only: [:show, :edit, :update, :destroy]
  def index
    @sweets = Sweet.all
  end

  def show
  end

  def update
    if @sweet.update(sweet_params)
      redirect_to @sweet
    else
      render :show
    end
  end

private
  def set_sweet
      @sweet = Sweet.find(params[:id])
  end

  def sweet_params
    params.require(:sweet).permit(:name)
  end
end

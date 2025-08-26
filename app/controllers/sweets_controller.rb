class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def show
    @sweet = Sweet.find(params[:id])
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = sweet.new(sweet_params)

    if @sweet.save
      redirect_to @sweet
    else
      render :new
    end
  end

  def edit
    @sweet = Sweet.find(params[:id])
  end

  def update
    @sweet = Sweet.find(params[:id])

    @sweet.update(sweet_params)

    if @sweet.save
      redirect_to @sweet
    else
      render :edit
    end
  end

  def destroy
    @sweet = Sweet.find(params[:id])
    @sweet.destroy
    flash[:notice] = "Sweet deleted."
    redirect_to sweets_path
  end

  private

  def sweet_params
    params.require(:vendor_sweets).permit(:name)
  end
end

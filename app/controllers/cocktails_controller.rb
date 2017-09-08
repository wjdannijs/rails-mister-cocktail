class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :delete]

  def index
    @cocktails = Cocktail.all.order(:name)
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @doses = Dose.where(cocktail_id: @cocktail.id)
    @dose = Dose.new
  end

  def edit
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(@cocktail)
    else
      render :edit
    end
  end

  def delete
    @cocktail.destroy!
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :cocktail_photo, :cocktail_photo_cache)
  end
end

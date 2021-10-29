class VegetablesController < ApplicationController
  skip_before_action :verify_authenticity_token
VEGETABLES_PER_PAGE= 5

 def new
   @vegetable= Vegetable.new
    #@vegetables= Vegetable.all
   @category= Category.all
  end
  def create
    @vegetable= Vegetable.new(product: params[:product],
                             name: params[:category],
                             price: params[:price],
                             category_id: params[:c_id])
   @vegetable.save
   redirect_to vegetables_path(@vegetable)



  end
  def index
    @page= params.fetch(:page,0).to_i
    @vegetable= Vegetable.offset(@page*VEGETABLES_PER_PAGE).limit(VEGETABLES_PER_PAGE)
                                  .where(["product like ? OR price like ? OR name like ?",
                                  "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"])
   @categories= Category.all

  end
  def show
    @vegetable= Vegetable.where(category_id: params[:sid])
  end

  def from_category
    byebug
   products = Vegetable.where(category_id: params[:cat_id])
    respond_to do |format|
      format.js
    end
  end

end

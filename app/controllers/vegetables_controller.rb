class VegetablesController < ApplicationController
  skip_before_action :verify_authenticity_token
  VEGETABLES_PER_PAGE= 5

 def new
   @vegetable= Vegetable.new
    #@vegetables= Vegetable.all
   @category= Category.all
  end
  def create
    @vegetable= Vegetable.new(vegetable)
   @vegetable.save
   redirect_to vegetables_path(@vegetable)



  end
  def index
    @page= params.fetch(:page,0).to_i
    @vegetable= Vegetable.offset(@page*VEGETABLES_PER_PAGE).limit(VEGETABLES_PER_PAGE)
                                  .where(["product like ? OR price like ? OR name like ?",
                                  "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"])
    @categories= Category.all
    session[:name]= current_user.username
  end
  def show
    @vegetables= Vegetable.find(params[:id])


  end
 def destroy
  @vegetable=Vegetable.find(params[:id]).destroy
  redirect_to root_path
 end

  def from_category
   @vegetables = Vegetable.where(category_id: params[:cat_id])
    respond_to do |format|
      format.js
    end
  end

  private
  def vegetable
    params.require(:vegetable).permit(:product, :name, :price, :category_id, :image)
  end
end

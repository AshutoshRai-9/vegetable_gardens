class CategoriesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new
       # @categories= Category.all
        @category= Category.new
    end
    def create
    @category= Category.new(name: params[:category])
    @category.save
    end
end

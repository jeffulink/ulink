class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update, :show, :destroy]
    def index
        @products = Product.all.page(params[:page]).per(9)
    end

    def show
    end

    def edit
    end

    def new
        @product = Product.new
    end

    def create
        product = params[:product]
        Product.create(name: product[:name], category: product[:category])
        redirect_to '/products'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :category)
    end
end
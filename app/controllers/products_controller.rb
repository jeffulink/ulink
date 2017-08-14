class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update, :show, :destroy]
    def index
        @products = Product.all.page(params[:page]).per(9)
    end

    def show
      @comment = Comment.new
      @comments = @product.comments
    end

    def edit
    end

    def new
        @product = Product.new
    end

    def vote

    end

    def create
        @product = Product.create(product_params)
        #@product.user = current_user
        binding.pry
        if @product.save
          flash[:success] = "已經成功新增"
          redirect_to products_path
        else
          flash[:danger] ="錯誤輸入"
          redirect_to products_path
        end
    end

    def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Products was successfully updated.' }
        format.json { render :show, status: :ok, location: @Product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :logo, :category_id)
    end
end
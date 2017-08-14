class CommentsController < ApplicationController
    def create
        @product = Product.find(params[:product_id])
        comment_params = params.require(:comment).permit(:content)
        @comment = @product.comments.build(comment_params)
        
        @comment.user = current_user
                

        if @comment.save
            flash[:success] = "留言成功"
            redirect_to product_path(@product)
        else
            flash[:danger] = "留言失敗"
            render 'products/show'
        end

    end
end

class CommentsController < ApplicationController
	def create
	    @article = Article.find(params[:article_id])
	    @comment = @article.comments.create(comment_params)
	    redirect_to article_path(@article)
  	end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end
  	private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @article = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:commenter, :body, :article_id)
    end

end

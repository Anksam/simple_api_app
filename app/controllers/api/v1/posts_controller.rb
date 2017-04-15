module Api
  module V1
    
    class PostsController < ApplicationController

      def index
        @posts = Post.order('created_at DESC')
      end

      def show
       @post = Post.find(params[:id])
     end

     private

       # Only allow a trusted parameter "white list" through.
       def post_params
         params.require(:post).permit(:title, :body)
       end

    end
  end
end

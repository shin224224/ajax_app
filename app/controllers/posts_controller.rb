class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end
  #コメントアウトする
  #def new
  #end

  def create
    post = Post.create(content: params[:content])
    #redirect_to action: :index 追記する
    render json:{ post: post }
    #XHR.response.postで値が取れるのは
    
    
  end
end

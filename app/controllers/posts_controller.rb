class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new
    @post.user_id = params[:user_id]
    @post.network_id = params[:network_id]
    @post.category_id = params[:category_id]
    @post.linked_account_id = params[:linked_account_id]
    @post.friend_id = params[:friend_id]
    @post.post_type = params[:post_type]
    @post.comment = params[:comment]
    @post.link = params[:link]
    @post.time_stamp = params[:time_stamp]
    @post.views = params[:views]
    @post.interactions = params[:interactions]

    if @post.save
      redirect_to posts_url, notice: "Post created successfully."
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.user_id = params[:user_id]
    @post.network_id = params[:network_id]
    @post.category_id = params[:category_id]
    @post.linked_account_id = params[:linked_account_id]
    @post.friend_id = params[:friend_id]
    @post.post_type = params[:post_type]
    @post.comment = params[:comment]
    @post.link = params[:link]
    @post.time_stamp = params[:time_stamp]
    @post.views = params[:views]
    @post.interactions = params[:interactions]

    if @post.save
      redirect_to posts_url, notice: "Post updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    redirect_to posts_url, notice: "Post deleted."
  end
end

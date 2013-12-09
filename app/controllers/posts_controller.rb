@client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "1yJiMcR9Ug1J9tbZPQ3NCA"
  config.consumer_secret     = "c3c4cff64b02f4ddf0c7de83f260d35f"
  config.access_token        = "97373933-8h9k4NOXovvE7ShPwzTS0lkyXtfckbU9CbF2w200y"
  config.access_token_secret = "NySgjmhwY6duGGDNHfUUjyXKoFQ%3D"
end

#def collect_with_max_id(collection=[], max_id=nil, &block)
#  response = yield max_id
#  collection += response
#  response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
#end

#def fetch_all_tweets(user)
#  collect_with_max_id do |max_id|
#   options = {:count => 200, :include_rts => true}
#   options[:max_id] = max_id unless max_id.nil?
#   @client.user_timeline(user, options)
# end
#end

#fetch_all_tweets("sferik")

class PostsController < ApplicationController

  def index
#   parsed_data = JSON.parse(open("@client").read)

    
#   @posts = parsed_data["data"]
 
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @networks = Network.all
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

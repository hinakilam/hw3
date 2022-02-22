class PostsController < ApplicationController
    def new
        @post = Post.new(place_id: params["place_id"]) 
    end 
    
    def create
        post = Post.create(params["post"]) 
        redirect_to place_path(post.place)
    end

end

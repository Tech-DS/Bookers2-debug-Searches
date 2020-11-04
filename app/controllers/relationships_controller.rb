class RelationshipsController < ApplicationController
 
 def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    redirect_back(fallback_location: books_path)
 end

 def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    redirect_back(fallback_location: books_path)
 end
end
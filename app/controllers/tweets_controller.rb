class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
    @tweet.build_map
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      redirect_to new_tweet_path
    end
  end
  
  def show
    @tweet = Tweet.find(params[:id])
    @lat = @tweet.map.latitude
    @lng = @tweet.map.longitude
    gon.lat = @lat
    gon.lng = @lng
  end
  
  private
  
  def tweet_params
    params.require(:tweet).permit(:title, :text, :image, map_attributes: [:address])
  end

end

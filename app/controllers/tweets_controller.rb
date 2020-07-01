class TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order(created_at: :desc)
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = current_user.tweets.new(tweet_params)
    @tweet.save
    @tag_array = @tweet.body.scan(/#\w+\b/)
    unless @tag_array == []
      @tag_array.each do |tag|
        @tag = Tag.find_or_initialize_by(name: tag)
        @tag.save
        @tweet.tags << @tag
      end
    end
    redirect_to tweets_path
    flash[:notice] = "Thanks for posting!"
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'Tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    redirect_to tweets_path
    flash[:notice] = "Tweet destroyed successfully!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweet_params
      params.require(:tweet).permit(:body)
    end
end

class ComicsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :new, :create]
    def top
    end

   
  
    def index
      @comic = Comic.all
      search = params[:search]
      @comic = @comic.joins(:user).where("genre LIKE ?", "%#{search}%") if search.present?
    end

    def new
        @comic = Comic.new
    end
    
    def create
        comic = Comic.new(comic_params)

        comic.user_id = current_user.id
        #tweetのuser_idに、現在ログインしているUserのidを代入する

        if comic.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end
    
    def edit
      @comic = Comic.find(params[:id])
    end

    def update
      comic = Comic.find(params[:id])
      if comic.update(comic_params)
        redirect_to :action => "index", :id => comic.id
      else
        redirect_to :action => "new"
      end
    end

    def destroy
      tweet = Comic.find(params[:id])
      tweet.destroy
      redirect_to action: :index
    end

      private
    def comic_params
        params.require(:comic).permit(:name, :genre, :company, :about, :content, :link, :image, :overall)
    end
end

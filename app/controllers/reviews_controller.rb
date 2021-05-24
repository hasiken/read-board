class ReviewsController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy]
  
    def index
      @reviews = Review.all
    end
  
    def new
        @review = Review.new
    end
    
    def create
        @review = current_user.reviews.build(review_params)
        if @review.save
          flash[:success] = 'メッセージを投稿しました。'
          redirect_to root_url
        else
          @review = current_user.reviews.order(id: :desc).page(params[:page])
          flash.now[:danger] = 'メッセージの投稿に失敗しました。'
          render :new
        end
    end
    
    def show
       @review = Review.find(params[:id])
    end
    
    def destroy
      @review.destroy
      flash[:success] = 'メッセージを削除しました。'
      redirect_back(fallback_location: root_path)
    end
    
    
    private

    def review_params
      params.require(:review).permit(:content,:title,:useful,:easy,:time,:introduction,:genre,:tag_list,:image)
    end

    def correct_user
      @review = current_user.reviews.find_by(id: params[:id])
      unless @review
        redirect_to root_url
      end
    end
end

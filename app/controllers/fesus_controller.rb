class FesusController < ApplicationController
  def index
    if params[:q] && params[:q].reject { |key, value| value.blank? }.present?
      return_value = search_params
      @q = Fesu.ransack(return_value, activated_true: true)
      @title = "Search Result"
    else
      @q = Fesu.ransack(activated_true: true)
      @title = "All users"
    end
    @q = Fesu.ransack(params[:q])
    @fesus = @q.result
    @fesus = @q.result.paginate(page: params[:page])
  end

  def show
    @fesus = Fesu.find_by(id: params[:id])
    @micropost = current_user.microposts.build if logged_in?
    # この書き方だとログインユーザーに紐づいた口コミを取得するという処理になる
    # @feed_items = current_user.feed.paginate(page: params[:page]) if logged_in?
    # この書き方にすると、フェスに紐づいた口コミを取得するという処理になる
    @feed_items = @fesus.microposts.paginate(page: params[:page])
  end

  def fesu_params
    params.require(:fesu).permit(
      :title, :address, :latitude, :longitude
    )
  end  

  private
    def search_params
      params.require(:q).permit(:place_cont)
    end
end

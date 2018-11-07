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
    @fesus = @q.result.paginate(page: params[:page])
  end

  def show
    @fesus = Fesu.find_by(id: params[:id])
  end
  
  private
    def search_params
      params.require(:q).permit(:place_cont)
    end
end

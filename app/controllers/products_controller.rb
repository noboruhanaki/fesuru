class ProductsController < ApplicationController
  # 検索画面を初めて開いた段階では、検索結果を表示せず検索フォームのみ表示
  def index
    if params[:q] && params[:q].reject { |key, value| value.blank? }.present?
      @q = Fesu.ransack(search_params, activated_true: true)
      @title = "Search Result"
    else
      @q = Fesu.ransack(activated_true: true)
      @title = "All users"
    end
    @fesus = @q.result.paginate(page: params[:page])
    @fesus = Fesu.all
  end

  def search
    @product = Fesu::Product.new(search_params)
    @products = @product
      .matches
      .order(availability: :desc, code: :asc)
      # .decorate
  end

  private
    def search_params
      params.require(:q).permit(:place_cont)
    end
end
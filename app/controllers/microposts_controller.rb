class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @micropost = current_user.microposts.build(micropost_params)
    @micropost.fesu_id = params[:fesu_id]
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to "/fesus/#{@micropost.fesu_id}" # 条件付き(後述)
    else
      @feed_items = []
      render 'fesus/show'
    end
  end

  def destroy
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end
class FesusController < ApplicationController
  def index
    @fesus = Fesu.all
  end

  def show
    @fesus = Fesu.find_by(id: params[:id])
  end
end

class ResevesController < ApplicationController
  before_action :authenticate_man!
  def new
    @reseve = Reseve.new
  end

  def create
    @reseve = Reseve.new(reseve_params)
    @reseve.date_time = (params[:date]+" "+params[:time]).in_time_zone
    if @reseve.save
      redirect_to men_mypage_path(reseve_params[:man_id]),notice: "予約が完了しました。"
    else
      render :new
    end
  end

  def update

  end

  def destroy

  end

  def reseves_index
      @reseves = Reseve.all
  end

  private
  def reseve_params
    params.require(:reseve).permit(:place,:people,:age,:stay_time,:man_id)
  end
end

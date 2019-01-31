class CastController < ApplicationController
  def show
    @woman = Woman.find(params[:id])
  end
  def edit
    @woman = Woman.find(params[:id])
  end
  def update
    @woman = Woman.find(params[:id])
    if @woman.update(woman_params)
      redirect_to cast_mypage_path(@woman),success: "会員情報を登録しました。"
    else
      render :edit,danger: "登録に失敗しました"
    end
  end

  def profile
    @woman = Woman.find(params[:id])
  end

  private
  def woman_params
    params.require(:woman).permit(:name,:age,:introduction,:image,:residence)
  end
end

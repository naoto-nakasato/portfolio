class PostsController < ApplicationController

  def show
    @man = Man.find(params[:id])
  end

  def stripe_create
    Stripe.api_key = "sk_test_k4Irva1BkiXLOcDgK5otCJk7"
    #skを本番用に
    token = params[:stripeToken]

    charge = Stripe::Charge.create({
        amount: 99999,
        currency: 'jpy',
        description: 'Example charge',
        source: token,
    })
    redirect_to men_mypage_path(params[:men_id]),success: "決済が完了しました。"
  end
  def edit
    @man = Man.find(params[:id])
  end
  def update
    @man = Man.find(params[:id])
    if @man.update(man_params)
      redirect_to men_profile_path(@man),success: "会員情報を登録しました。"
    else
      render :edit,danger: "登録に失敗しました"
    end
  end

  def profile
    @man = Man.find(params[:id])
  end

  def casts_index
    @casts = Woman.all
  end



  private
  def man_params
    params.require(:man).permit(:name,:age,:introduction,:image,:residence)
  end
end

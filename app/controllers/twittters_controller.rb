class TwitttersController < ApplicationController
  before_action :set_twittter, only: [:show, :edit, :update, :destroy]
  def index
    @twittters = Twittter.all
  end
  
  def new
    @twittter = Twittter.new
  end

  def create
    @twittter = Twittter.new(twittter_params)
    if params[:back]
      render :new
    else
      if @twittter.save
        redirect_to twittters_path, notice: "ツイートしました！"
      else
        render :new
      end
    end
  end

  def confirm
    @twittter = Twittter.new(twittter_params)
    render :new if @twittter.invalid?
  end
  
  def edit
  end

  def update
    if @twittter.update(twittter_params)
      redirect_to home_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end
  
  def destroy
    @twittter.destroy
    redirect_to twittters_path, notice:"ツイートを削除しました！"
  end
  
  
  private
  def twittter_params
    params.require(:twittter).permit(:content)
  end
  
  def set_twittter
    @twittter = Twittter.find(params[:id])
  end
  
end

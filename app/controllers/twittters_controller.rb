class TwitttersController < ApplicationController
  before_action :set_twittter, only: [:show, :edit, :update]
  def index
    @twittters = Twittter.all
  end
  
  def new
    @twittter = Twittter.new
  end

  def create
    @twittter = Twittter.new(twittter_params)

    if (@twittter.save)
      redirect_to home_path
    else
      render 'new'
    end
  end

  def show
  end
  
  def edit
  end

  def update
    if @twittter.update(twittter_params)
      redirect_to home_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end
  
  
  private
  def twittter_params
    params.require(:twittter).permit(:content)
  end
  
  def set_twittter
    @twittter = Twittter.find(params[:id])
  end
  
end

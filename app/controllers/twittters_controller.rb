class TwitttersController < ApplicationController
  def index
    @twittters = Twittter.all
  end
  
  def new
    @twittter = Twittter.new
  end

  def create
    Twittter.create(twittter_params)
    redirect_to new_twittter_path
  end

  private
  def twittter_params
    params.require(:twittter).permit(:content)
  end
  
end

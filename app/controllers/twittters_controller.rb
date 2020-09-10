class TwitttersController < ApplicationController
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

  private
  def twittter_params
    params.require(:twittter).permit(:content)
  end
  
end

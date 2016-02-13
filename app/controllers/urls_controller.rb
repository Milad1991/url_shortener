class UrlsController < ApplicationController
  def show
    @url = Url.find(params[:id])
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    respond_to do |format|
      if @url.save
        format.html { redirect_to @url }
      else
        format.html { render :new }
      end
    end
  end







  private

  def set_url
    @url = Url.find(params[:id])
  end

  def url_params
    params.require(:url).permit(:input)
  end


end

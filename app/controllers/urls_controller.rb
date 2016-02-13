class UrlsController < ApplicationController
  def show
    @url = Url.find(params[:id])
    redirect_to ("#{@url.input}")
  end

  def new
    @urls = Url.all
  end

  def create
    @url = Url.new(url_params)
    @url.save
    redirect_to urls_new_path(id: @url.id)
  end







  private

  def set_url
    @url = Url.find(params[:id])
  end

  def url_params
    params.require(:url).permit(:input, :id)
  end


end

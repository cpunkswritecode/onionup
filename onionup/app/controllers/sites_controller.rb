class SitesController < ApplicationController
  def index
    @sites = current_user.sites
  end

  def show
    @site = Site.find_by(id: params[:id])
  end

  def new
  end

  def create
    @site = Site.new(site_params)
    @site.user_id = current_user.id
    if @site.save
      redirect_to sites_url
      return
    else
      flash.now[:errors] = @site.errors.full_messages
      render :new
      return
    end
    # fail
  end

  def delete
  end

  private

  def site_params
    params.require(:site).permit(:url)
  end

end

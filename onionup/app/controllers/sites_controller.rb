class SitesController < ApplicationController
  def index
  end

  def show
    @site = Site.find_by(id: params[:id])
  end

  def new
  end

  def delete
  end


end

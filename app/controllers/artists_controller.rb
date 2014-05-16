class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    Artist.create(name: params[:artist][:name], genre: params[:artist][:genre])
    redirect_to root_path
  end
end

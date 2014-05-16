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

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(name: params[:artist][:name], genre: params[:artist][:genre])
    redirect_to root_path
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to root_path
  end

end


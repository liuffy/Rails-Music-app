class TracksController < ApplicationController
  before_action :require_user!

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to album_url
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def new
    @album = Album.find(params[:id])
    @track = Track.new(album_id: params: [:album_id]) # need to reference the album
    render :new
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :edit
    end
  end

  private
  def track_params
    params.require(:track).permit(:title, :album_id, :lyrics, :track_type)
  end
end

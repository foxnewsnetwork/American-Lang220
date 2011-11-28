class AdsController < ApplicationController

  def new
    @ad = Ad.new
  end
  def create
    @ad = Ad.new(params[:ad])

    if @ad.save
      flash[:notice] = "Ad saved"
      redirect_to crop_ad_path(@ad)
    else
      render 'new'
    end
  end

  def crop
    @ad = Ad.find(params[:id])

  end
  def destroy
  end

  def show
  end

  def edit
  end

  def click
  end

  def close
  end

  def index
  end

end

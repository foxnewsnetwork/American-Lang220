class AdsController < ApplicationController


  def new
     unless current_corporation
  		flash[:error] = "Only actual corporations can make ads. Consider becoming a large corporation"
  		redirect_to "/"
  		return
  	end
    @ad = Ad.new(:corporation)
  end


  def crop
    @ad = Ad.find(params[:id])

  end

  
  # Post from corporation account
  def create
  	# Step 1: Confirm a corporation is doing this
  	#corp = Corporation.find_for_authentication( params[:ad][:corporation] )
  	#if corp.nil?
    unless current_corporation
  		flash[:error] = "Only actual corporations can make ads. Consider becoming a large corporation"
  		redirect_to "/"
  		return
  	end

  	# Step 2: Initialize an ad objection
    #corp = current_corporation
    #@ad = corp.ads.new(params[:ad])
    @ad = Ad.new(params[:ad])
    @ad.corporation_id = current_corporation.id


  	# Step 3: Try to save it
  	unless @ad.save
  		# We've encountered an error while trying to save the ad; handle this error
  		flash.now[:error] = "Ad not saved correctly. Handle this error better."
  		render 'new'
  		return
  	end

  	# Step 4: Handle successful saving by redirection
  	flash[:success] = "Successfully created a new ad"
    redirect_to crop_ad_path(@ad)

  end

  def destroy
  	# Step 1: Confirming we have permission to do this
  	
  	# Step 2: Attempt the deletion
  	
  	# Step 3: Handle a successful deletion update
  	
  	# Step 4: Handle a failed deletion attempt
  end

	# Get from user account
  def show
    @ad = Ad.find(params[:id])
  end

	# Put from corporation account
  def edit
  end
  
  # Put method for update purposes
  def update
  end

	# Get from user account
  def interact
  end

end

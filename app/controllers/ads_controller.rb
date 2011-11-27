class AdsController < ApplicationController
  
  # Get request from a corporation to make new ads
  def new
  	# Step 1: Check sign-in
  	
  	# Step 2: Generate form
  end
  
  # Post from corporation account
  def create
  	# Step 1: Confirm a corporation is doing this
  	corp = Corporation.find_for_authentication( params[:ad][:corporation] )
  	if corp.nil?
  		flash[:error] = "Only actual corporations can make ads. Consider becoming a large corporation"
  		redirect_to "/"
  		return
  	end 
  	
  	# Step 2: Initialize an ad objection
  	ad = corp.ads.new( params[:ad][:ad] )
  	
  	# Step 3: Try to save it
  	unless ad.save
  		# We've encountered an error while trying to save the ad; handle this error
  		flash.now[:error] = "Ad not saved correctly. Handle this error better."
  		render corporation_new_ad_path
  		return
  	end
  	
  	# Step 4: Handle successful saving by redirection
  	flash[:success] = "Successfully created a new ad"
  	redirect_to ad
  	
  end

	# Delete from corporation account
  def destroy
  	# Step 1: Confirming we have permission to do this
  	
  	# Step 2: Attempt the deletion
  	
  	# Step 3: Handle a successful deletion update
  	
  	# Step 4: Handle a failed deletion attempt
  end

	# Get from user account
  def show
  	# IMPLEMENT ME, YOU FAGGOT!
  end

	# Put from corporation account
  def edit
    	# IMPLEMENT ME, YOU FAGGOT!
  end
  
  # Put method for update purposes
  def update
  	# Implement me, you faggot
  end

	# Get from user account
  def interact
    	# IMPLEMENT ME, YOU FAGGOT!
  end

end

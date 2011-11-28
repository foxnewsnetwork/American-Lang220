class CastersignupsController < ApplicationController
   @@toolbar_hash = {:home=>'', :success=>'', :failure=>'',:faq=>'', :overview=>'', :perks=>'', :partners=>'', :apply=>''}
  
  def home
    @toolbar = @@toolbar_hash.clone
    @toolbar[:home]='active'
  end

  def success
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
  end

  def failure
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
  end

  def faq
    @toolbar = @@toolbar_hash.clone
    @toolbar[:faq]='active'
  end

  def overview
    @toolbar = @@toolbar_hash.clone
    @toolbar[:overview]='active'
  end

  def perks
    @toolbar = @@toolbar_hash.clone
    @toolbar[:perks]='active'
  end

  def partner
    @toolbar = @@toolbar_hash.clone
    @toolbar[:partners]='active'
  end

  def apply
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
    @castersignup = Castersignup.new
  end

  def create
    puts "Created is called!"
    @castersignup = Castersignup.new(params[:castersignup])

    if request.xhr?
      puts 'xhr request'
    end

    if @castersignup.save
      flash[:success] = "Sign Up Success!"

      respond_to do |format|
        format.html { redirect_to '/caster/signup/success' }
        format.js
      end
    else
      flash[:failure] = "Failure Failed!"

      respond_to do |format|
        format.html { redirect_to '/caster/signup/failure' }
        format.js
      end
    end
  end


  def success
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
  end
 
  def failure
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
  end


end

class AdvertisersignupsController < ApplicationController
<<<<<<< HEAD
   @@toolbar_hash = {:home=>'',:demo=>'', :faq=>'', :overview=>'', :partners=>'', :apply=>''}
=======
   @@toolbar_hash = {:home=>'',:demo=>'', :faq=>'', :overview=>'', :partners=>'', :apply=>'', :success=>''}
>>>>>>> 3442aeb7322af232ccf0cdac03c16cfc50bfa3a0
  
  def home
    @toolbar = @@toolbar_hash.clone
    @toolbar[:home]='active'
  end

  def faq
    @toolbar = @@toolbar_hash.clone
    @toolbar[:faq]='active'
  end
  
  def demo
    @toolbar = @@toolbar_hash.clone
    @toolbar[:demo]='active'
  end

  def overview
    @toolbar = @@toolbar_hash.clone
    @toolbar[:overview]='active'
  end

  def partner
    @toolbar = @@toolbar_hash.clone
    @toolbar[:partners]='active'
  end

  def apply
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
<<<<<<< HEAD
    @castersignup = Castersignup.new
  end

=======
    @advertisersignup = AdvertiserSignUp.new 
  end

  def create
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
    AdvertiserSignUpMailer.welcome_email.deliver
    @advertisersignup = AdvertiserSignUp.new(params[:advertisersignup])
    if @advertisersignup.save
      flash[:success] = "Success!"
      render :action => "success"
    else
      flash[:failure] = "Something went wrong. Please try again."
      redirect_to :action=>"apply"
    end
  end
  
  def success
    @toolbar = @@toolbar_hash.clone
    @toolbar[:success]='active'
  end
>>>>>>> 3442aeb7322af232ccf0cdac03c16cfc50bfa3a0
end

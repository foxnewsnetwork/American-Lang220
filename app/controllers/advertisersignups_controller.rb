class AdvertisersignupsController < ApplicationController
   @@toolbar_hash = {:home=>'',:demo=>'', :faq=>'', :overview=>'', :partners=>'', :apply=>'', :success=>''}
  
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
  end

  def create
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
    AdvertiserSignUpMailer.welcome_email.deliver
    render :action => "success"
  end
  
  def success
    @toolbar = @@toolbar_hash.clone
    @toolbar[:success]='active'
  end
end

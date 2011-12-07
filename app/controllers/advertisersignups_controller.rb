class AdvertisersignupsController < ApplicationController
   @@toolbar_hash = {:home=>'',:demo=>'', :faq=>'', :overview=>'', :partners=>'', :apply=>''}
  
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
    @castersignup = Castersignup.new
  end

end

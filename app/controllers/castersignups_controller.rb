class CastersignupsController < ApplicationController
  @@toolbar_hash = {:home=>'', :success=>'', :failure=>'',:faq=>'', :overview=>'', :perks=>'', :partners=>'', :apply=>''}
  
  def home
    @toolbar = @@toolbar_hash.clone
    @toolbar[:home]='active'
  end

  def success
  end

  def failure
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

  def partners
    @toolbar = @@toolbar_hash.clone
    @toolbar[:partners]='active'
  end

  def apply
    @toolbar = @@toolbar_hash.clone
    @toolbar[:apply]='active'
  end
end

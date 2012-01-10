class RobotindexController < ApplicationController

   @@toolbar_hash = {:index=>'',:about=>'', :contacts=>'', :overview=>'', :partners=>'', :apply=>'', :success=>''}
  layout 'application', :except => [:index, :about, :devsignup, :contacts]
  
  def index
    @title = "Home"
    @toolbar = @@toolbar_hash.clone
    @toolbar[:index]='current'
  end

  def about
    @title = "About"
    @toolbar = @@toolbar_hash.clone
    @toolbar[:about]='current'
  end

  def devsignup
  end
  def contacts
    @title = "Contacts"
    @toolbar = @@toolbar_hash.clone
    @toolbar[:contacts]='current'
  end

  def send_mail
    UserMailer.welcome_email.deliver
    redirect_to :back 
  end
end

class RobotindexController < ApplicationController

   @@toolbar_hash = {:index=>'',:about=>'', :contacts=>'', :overview=>'', :partners=>'', :apply=>'', :success=>'', :gamesignup=>''}
  layout 'application', :except => [:index, :about, :contacts, :gamesignup, :success, :create]
  
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

  def gamesignup
    @title = "Game Sign Up"
    @toolbar = @@toolbar_hash.clone
    @toolbar[:gamesignup]='current'
	
    @gamesignup = Game.new
  end

  def create
    @gamesignup = Game.new(params[:game])

    if @gamesignup.save
      @title = "Game Sign Up"
      @toolbar = @@toolbar_hash.clone
      @toolbar[:gamesignup]='current'

      
      flash[:success] = "Sign Up Success! We will contact you within 24-48 hours. Thank you!"
      redirect_to :action=> "gamesignup"
    else
      @title = "Game Sign Up"
      @toolbar = @@toolbar_hash.clone
      @toolbar[:gamesignup]='current'

      @gamesignup.errors.each do |key, msg|
        flash[:"#{key}"] = "#{key}" + ' ' + msg
      end
      flash[:error] = "Oops, something went wrong. Please try again!"
      render 'gamesignup'
    end

  end

  def success

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

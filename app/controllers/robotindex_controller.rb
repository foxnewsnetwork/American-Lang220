class RobotindexController < ApplicationController

   @@toolbar_hash = {:index=>'',:about=>'', :contacts=>'', :overview=>'', :partners=>'', :apply=>'', :success=>'', :gamesignup=>'', :developers=>''}
  layout 'application', :except => [:index, :about, :contacts, :gamesignup, :success, :create, :developers]
  
  def index
    @title = "Home"
    @toolbar = @@toolbar_hash.clone
    @toolbar[:index]='current'
  end

  def developers
    @title = "Developers"
    @toolbar = @@toolbar_hash.clone
    @toolbar[:developers]='current'
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

      GameMailer.registration_confirmation(@gamesignup).deliver
      GameMailer.registration_confirmation_to_execs(@gamesignup).deliver

      flash[:success] = "Success! Thank you, #{params[:game][:contact_name].split(' ')[0]}! We will contact you within 24-48 hours."
      redirect_to :action=> "gamesignup"
    else
      @title = "Game Sign Up"
      @toolbar = @@toolbar_hash.clone
      @toolbar[:gamesignup]='current'

      @gamesignup.errors.each do |key, msg|
        flash.now[:"#{key}"] = capitalize_and_merge("#{key}".split("_")) + ' ' + msg
      end
      flash.now[:error] = "Oops, something went wrong. Please try again!"
      render :action => 'gamesignup'
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

  def capitalize_and_merge(list)
    r = []
    list.each do |x|
      r << x.capitalize
    end   
    return r.join(' ')
  end
end

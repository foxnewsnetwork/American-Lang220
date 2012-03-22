class PagesController < ApplicationController
  layout 'application', :except => :holder
  @@toolbar_hash = {:about => '', :promotion => '', :home => '', :caster => '', :channel => '', :partner=>'', :leader=>'', :contact=>'', :about=>''}

  def home
   @toolbar = @@toolbar_hash.clone
   @toolbar[:home] = 'active'
  end

  def partner
  end

  def about
   @toolbar = @@toolbar_hash.clone
   @toolbar[:about] = 'active'
  end

  def promotion
   @toolbar = @@toolbar_hash.clone
   @toolbar[:promotion] = 'active'
  end

  def caster
   @toolbar = @@toolbar_hash.clone
   @toolbar[:caster] = 'active'
  end

  def channel
   @toolbar = @@toolbar_hash.clone
   @toolbar[:channel] = 'active'
  end

  def partner
   @toolbar = @@toolbar_hash.clone
   @toolbar[:partner] = 'active'
    
  end

  def holder
    @betasignup = Betasignups.new
    @a = 'main.css'
    @b = 'thickbox.css'
    @c = 'reset.css'
  end

  def create
    @betasignup = Betasignups.new(params[:betasignups])

   @toolbar = @@toolbar_hash.clone
   @toolbar[:partner] = 'active'
    if request.xhr?
      puts 'xhr request'
    end

    if @betasignup.save
      flash[:success] = "Sign Up Success!"
    else
      flash[:failure] = "Failure Failed!"
    end

    respond_to do |format|
      format.html { redirect_to '/' }
      format.js
    end

  end

  def index
    @betasignups = Betasignups.all
    @toolbar = @@toolbar_hash.clone
    @toolbar[:index] = 'active'
		@home = 'active'
		@location = 'Home'
		render :layout=>false
  end

  def success
   @toolbar = @@toolbar_hash.clone
   @toolbar[:success] = 'active'
  end

  def leader
   @toolbar = @@toolbar_hash.clone
   @toolbar[:leader] = 'active'
  end


  def contact 
		@contact = 'active'
		@location = 'Contact'
		 @toolbar = @@toolbar_hash.clone
		 @toolbar[:contact] = 'active'
  end

  def about
		@about = 'active'
		@location = 'About'
   @toolbar = @@toolbar_hash.clone
   @toolbar[:about] = 'active'
		render :layout=>false
  end


end

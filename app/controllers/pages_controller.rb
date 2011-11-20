class PagesController < ApplicationController
  layout 'application', :except => :holder

  def home
    @toolbar = {:about => '', :promotion => '', :home => 'active', :caster => '', :channel => ''}
  end

  def about
    @toolbar = {:about => 'active', :promotion => '', :home => 'active', :caster => '', :channel => ''}
  end

  def promotion
    @a = 'bootstrap.css'
    @b = ''
    @c = ''
    @toolbar = {:about => '', :promotion => 'active', :home => 'active', :caster => '', :channel => ''}
  end

  def caster
    @toolbar = {:about => '', :promotion => '', :home => '', :caster => 'active', :channel => ''}
  end

  def channels
    @toolbar = {:about => '', :promotion => '', :home => '', :caster => '', :channel => 'active'}
  end

  def holder
    @betasignup = Betasignups.new
    @a = 'main.css'
    @b = 'thickbox.css'
    @c = 'reset.css'
  end

  def create
    @betasignup = Betasignups.new(params[:betasignups])
    @a = 'main.css'
    @b = 'thickbox.css'
    @c = 'reset.css'

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
    @a = 'main.css'
    @b = 'thickbox.css'
    @c = 'reset.css'
   end

  def success
    @a = 'main.css'
    @b = 'thickbox.css'
    @c = 'reset.css'
  end


end

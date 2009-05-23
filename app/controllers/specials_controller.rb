class SpecialsController < ApplicationController
  def index
    @special_pages, @specials = paginate :specials, :per_page => 10
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :index }

  def show
    @special = Special.find(params[:id])
  end

  def new
    @special = Special.new
  end

  def create
    @special = Special.new(params[:special])
    if @special.save
      flash[:notice] = 'Special was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @special = Special.find(params[:id])
  end

  def update
    @special = Special.find(params[:id])
    if @special.update_attributes(params[:special])
      flash[:notice] = 'Special was successfully updated.'
      redirect_to :action => 'show', :id => @special
    else
      render :action => 'edit'
    end
  end

  def destroy
    Special.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end

class GolfAdminController < ApplicationController
  layout 'golf_tourney'
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @tournament_pages, @tournaments = paginate :tournaments, :per_page => 10
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

  def new
    @tournament = Tournament.new
  end

  def create
    @tournament = Tournament.new(params[:tournament])
    if @tournament.save
      flash[:notice] = 'Tournament was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    if @tournament.update_attributes(params[:tournament])
      flash[:notice] = 'Tournament was successfully updated.'
      redirect_to :action => 'show', :id => @tournament
    else
      render :action => 'edit'
    end
  end

  def destroy
    Tournament.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end

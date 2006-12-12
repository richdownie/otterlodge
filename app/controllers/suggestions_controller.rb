class SuggestionsController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @suggestion_pages, @suggestions = paginate :suggestions, :per_page => 10
  end

  def show
    @suggestion = Suggestion.find(params[:id])
  end

  def new
    @suggestion = Suggestion.new
  end

  def create
    @suggestion = Suggestion.new(params[:suggestion])
    if @suggestion.save
      flash[:notice] = 'Suggestion was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @suggestion = Suggestion.find(params[:id])
  end

  def update
    @suggestion = Suggestion.find(params[:id])
    if @suggestion.update_attributes(params[:suggestion])
      flash[:notice] = 'Suggestion was successfully updated.'
      redirect_to :action => 'show', :id => @suggestion
    else
      render :action => 'edit'
    end
  end

  def destroy
    Suggestion.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end

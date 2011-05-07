class BreezesController < ApplicationController

  def index
    @breezes = Breeze.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @breezes }
    end
  end

  def show
    @breeze = Breeze.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @breeze }
    end
  end


  def new
    @breeze = Breeze.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @breeze }
    end
  end

  def edit
    @breeze = Breeze.find(params[:id])
  end

  def create
    @breeze = Breeze.new(params[:breeze])

    respond_to do |format|
      if @breeze.save
        format.html { redirect_to(@breeze, :notice => 'Breeze was successfully created.') }
        format.xml  { render :xml => @breeze, :status => :created, :location => @breeze }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @breeze.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @breeze = Breeze.find(params[:id])

    respond_to do |format|
      if @breeze.update_attributes(params[:breeze])
        format.html { redirect_to(@breeze, :notice => 'Breeze was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @breeze.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @breeze = Breeze.find(params[:id])
    @breeze.destroy

    respond_to do |format|
      format.html { redirect_to(breezes_url) }
      format.xml  { head :ok }
    end
  end
end

class BreezesController < ApplicationController
  # GET /breezes
  # GET /breezes.xml
  def index
    @breezes = Breeze.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @breezes }
    end
  end

  # GET /breezes/1
  # GET /breezes/1.xml
  def show
    @breeze = Breeze.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @breeze }
    end
  end

  # GET /breezes/new
  # GET /breezes/new.xml
  def new
    @breeze = Breeze.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @breeze }
    end
  end

  # GET /breezes/1/edit
  def edit
    @breeze = Breeze.find(params[:id])
  end

  # POST /breezes
  # POST /breezes.xml
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

  # PUT /breezes/1
  # PUT /breezes/1.xml
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

  # DELETE /breezes/1
  # DELETE /breezes/1.xml
  def destroy
    @breeze = Breeze.find(params[:id])
    @breeze.destroy

    respond_to do |format|
      format.html { redirect_to(breezes_url) }
      format.xml  { head :ok }
    end
  end
end

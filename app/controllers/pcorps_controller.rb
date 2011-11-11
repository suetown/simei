class PcorpsController < ApplicationController
  # GET /pcorps
  # GET /pcorps.xml
  def index
   #@pcorps = Pcorp.all
    @pcorps = Pcorp.order('reno ASC')
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pcorps }
    end
  end

  # GET /pcorps/1
  # GET /pcorps/1.xml
  def show
    @pcorp = Pcorp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pcorp }
    end
  end

  # GET /pcorps/new
  # GET /pcorps/new.xml
  def new
    @pcorp = Pcorp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pcorp }
    end
  end

  # GET /pcorps/1/edit
  def edit
    @pcorp = Pcorp.find(params[:id])
  end

  # POST /pcorps
  # POST /pcorps.xml
  def create
    @pcorp = Pcorp.new(params[:pcorp])

    respond_to do |format|
      if @pcorp.save
        format.html { redirect_to(@pcorp, :notice => 'Pcorp was successfully created.') }
        format.xml  { render :xml => @pcorp, :status => :created, :location => @pcorp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pcorp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pcorps/1
  # PUT /pcorps/1.xml
  def update
    @pcorp = Pcorp.find(params[:id])

    respond_to do |format|
      if @pcorp.update_attributes(params[:pcorp])
        format.html { redirect_to(@pcorp, :notice => 'Pcorp was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pcorp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pcorps/1
  # DELETE /pcorps/1.xml
  def destroy
    @pcorp = Pcorp.find(params[:id])
    @pcorp.destroy

    respond_to do |format|
      format.html { redirect_to(pcorps_url) }
      format.xml  { head :ok }
    end
  end
end

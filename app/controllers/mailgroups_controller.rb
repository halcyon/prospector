class MailgroupsController < ApplicationController
  # GET /mailgroups
  # GET /mailgroups.xml
  def index
    @mailgroups = Mailgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mailgroups }
    end
  end

  # GET /mailgroups/1
  # GET /mailgroups/1.xml
  def show
    @mailgroup = Mailgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailgroup }
    end
  end

  # GET /mailgroups/new
  # GET /mailgroups/new.xml
  def new
    @mailgroup = Mailgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mailgroup }
    end
  end

  # GET /mailgroups/1/edit
  def edit
    @mailgroup = Mailgroup.find(params[:id])
  end

  # POST /mailgroups
  # POST /mailgroups.xml
  def create
    @mailgroup = Mailgroup.new(params[:mailgroup])

    respond_to do |format|
      if @mailgroup.save
        format.html { redirect_to(@mailgroup, :notice => 'Mailgroup was successfully created.') }
        format.xml  { render :xml => @mailgroup, :status => :created, :location => @mailgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mailgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mailgroups/1
  # PUT /mailgroups/1.xml
  def update
    @mailgroup = Mailgroup.find(params[:id])

    respond_to do |format|
      if @mailgroup.update_attributes(params[:mailgroup])
        format.html { redirect_to(@mailgroup, :notice => 'Mailgroup was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mailgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mailgroups/1
  # DELETE /mailgroups/1.xml
  def destroy
    @mailgroup = Mailgroup.find(params[:id])
    @mailgroup.destroy

    respond_to do |format|
      format.html { redirect_to(mailgroups_url) }
      format.xml  { head :ok }
    end
  end
end

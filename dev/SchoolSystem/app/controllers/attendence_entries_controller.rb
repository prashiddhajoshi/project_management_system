class AttendenceEntriesController < ApplicationController
  # GET /attendence_entries
  # GET /attendence_entries.xml
  def index
    @attendence_entries = AttendenceEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attendence_entries }
    end
  end

  # GET /attendence_entries/1
  # GET /attendence_entries/1.xml
  def show
    @attendence_entry = AttendenceEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attendence_entry }
    end
  end

  # GET /attendence_entries/new
  # GET /attendence_entries/new.xml
  def new
    @attendence_entry = AttendenceEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attendence_entry }
    end
  end

  # GET /attendence_entries/1/edit
  def edit
    @attendence_entry = AttendenceEntry.find(params[:id])
  end

  # POST /attendence_entries
  # POST /attendence_entries.xml
  def create
    @attendence_entry = AttendenceEntry.new(params[:attendence_entry])

    respond_to do |format|
      if @attendence_entry.save
        format.html { redirect_to(@attendence_entry, :notice => 'Attendence entry was successfully created.') }
        format.xml  { render :xml => @attendence_entry, :status => :created, :location => @attendence_entry }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attendence_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attendence_entries/1
  # PUT /attendence_entries/1.xml
  def update
    @attendence_entry = AttendenceEntry.find(params[:id])

    respond_to do |format|
      if @attendence_entry.update_attributes(params[:attendence_entry])
        format.html { redirect_to(@attendence_entry, :notice => 'Attendence entry was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attendence_entry.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attendence_entries/1
  # DELETE /attendence_entries/1.xml
  def destroy
    @attendence_entry = AttendenceEntry.find(params[:id])
    @attendence_entry.destroy

    respond_to do |format|
      format.html { redirect_to(attendence_entries_url) }
      format.xml  { head :ok }
    end
  end
end

class StudentProfilesController < ApplicationController
  # GET /student_profiles
  # GET /student_profiles.xml
  def index
    @student_profiles = StudentProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_profiles }
    end
  end

  # GET /student_profiles/1
  # GET /student_profiles/1.xml
  def show
    @student_profile = StudentProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_profile }
    end
  end

  # GET /student_profiles/new
  # GET /student_profiles/new.xml
  def new
    @student_profile = StudentProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_profile }
    end
  end

  # GET /student_profiles/1/edit
  def edit
    @student_profile = StudentProfile.find(params[:id])
  end

  # POST /student_profiles
  # POST /student_profiles.xml
  def create
    @student_profile = StudentProfile.new(params[:student_profile])

    respond_to do |format|
      if @student_profile.save
        format.html { redirect_to(@student_profile, :notice => 'Student profile was successfully created.') }
        format.xml  { render :xml => @student_profile, :status => :created, :location => @student_profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_profiles/1
  # PUT /student_profiles/1.xml
  def update
    @student_profile = StudentProfile.find(params[:id])

    respond_to do |format|
      if @student_profile.update_attributes(params[:student_profile])
        format.html { redirect_to(@student_profile, :notice => 'Student profile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_profiles/1
  # DELETE /student_profiles/1.xml
  def destroy
    @student_profile = StudentProfile.find(params[:id])
    @student_profile.destroy

    respond_to do |format|
      format.html { redirect_to(student_profiles_url) }
      format.xml  { head :ok }
    end
  end
end

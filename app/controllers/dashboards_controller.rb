class DashboardsController < ApplicationController
  # GET /Dashboards
  # GET /Dashboards.json
  def index
    @Dashboards = Dashboard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Dashboards }
    end
  end

  # GET /Dashboards/1
  # GET /Dashboards/1.json
  def show
    @UserStories = UserStory.all
  end

  # GET /Dashboards/new
  # GET /Dashboards/new.json
  def new
    @Dashboard = Dashboard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Dashboard }
    end
  end

  # GET /Dashboards/1/edit
  def edit
    @Dashboard = Dashboard.find(params[:id])
  end

  # POST /Dashboards
  # POST /Dashboards.json
  def create
    @Dashboard = Dashboard.new(params[:Dashboard])

    respond_to do |format|
      if @Dashboard.save
        format.html { redirect_to @Dashboard, notice: 'Dashboard was successfully created.' }
        format.json { render json: @Dashboard, status: :created, location: @Dashboard }
      else
        format.html { render action: "new" }
        format.json { render json: @Dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Dashboards/1
  # PUT /Dashboards/1.json
  def update
    @Dashboard = Dashboard.find(params[:id])

    respond_to do |format|
      if @Dashboard.update_attributes(params[:Dashboard])
        format.html { redirect_to @Dashboard, notice: 'Dashboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Dashboards/1
  # DELETE /Dashboards/1.json
  def destroy
    @Dashboard = Dashboard.find(params[:id])
    @Dashboard.destroy

    respond_to do |format|
      format.html { redirect_to Dashboards_url }
      format.json { head :no_content }
    end
  end
end

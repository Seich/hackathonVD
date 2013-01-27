class ComplaintTypesController < ApplicationController
  # GET /complaint_types
  # GET /complaint_types.json
  def index
    @complaint_types = ComplaintType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @complaint_types }
    end
  end

  # GET /complaint_types/1
  # GET /complaint_types/1.json
  def show
    @complaint_type = ComplaintType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @complaint_type }
    end
  end

  # GET /complaint_types/new
  # GET /complaint_types/new.json
  def new
    @complaint_type = ComplaintType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @complaint_type }
    end
  end

  # GET /complaint_types/1/edit
  def edit
    @complaint_type = ComplaintType.find(params[:id])
  end

  # POST /complaint_types
  # POST /complaint_types.json
  def create
    @complaint_type = ComplaintType.new(params[:complaint_type])

    respond_to do |format|
      if @complaint_type.save
        format.html { redirect_to @complaint_type, notice: 'Complaint type was successfully created.' }
        format.json { render json: @complaint_type, status: :created, location: @complaint_type }
      else
        format.html { render action: "new" }
        format.json { render json: @complaint_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /complaint_types/1
  # PUT /complaint_types/1.json
  def update
    @complaint_type = ComplaintType.find(params[:id])

    respond_to do |format|
      if @complaint_type.update_attributes(params[:complaint_type])
        format.html { redirect_to @complaint_type, notice: 'Complaint type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @complaint_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaint_types/1
  # DELETE /complaint_types/1.json
  def destroy
    @complaint_type = ComplaintType.find(params[:id])
    @complaint_type.destroy

    respond_to do |format|
      format.html { redirect_to complaint_types_url }
      format.json { head :no_content }
    end
  end
end

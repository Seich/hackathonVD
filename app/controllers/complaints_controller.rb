class ComplaintsController < ApplicationController
  # GET /complaints
  # GET /complaints.json
  def index
    @complaints = Complaint.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @complaints, include: [:plaintiff, :defendant] }
    end
  end

  # GET /complaints/1
  # GET /complaints/1.json
  def show
    @complaint = Complaint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @complaint }
    end
  end

  # GET /complaints/new
  # GET /complaints/new.json
  def new
    @complaint = Complaint.new
    @complaint.build_plaintiff
    @complaint.build_defendant

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @complaint }
    end
  end

  # GET /complaints/1/edit
  def edit
    @complaint = Complaint.find(params[:id])
  end

  # POST /complaints
  # POST /complaints.json
  def create
    @complaint = Complaint.new(params[:complaint])

    respond_to do |format|
      if @complaint.save
        format.html { redirect_to @complaint, notice: 'Complaint was successfully created.' }
        format.json { render json: @complaint, status: :created, location: @complaint }
      else
        format.html { render action: "new" }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /complaints/1
  # PUT /complaints/1.json
  def update
    @complaint = Complaint.find(params[:id])

    respond_to do |format|
      if @complaint.update_attributes(params[:complaint])
        format.html { redirect_to @complaint, notice: 'Complaint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complaints/1
  # DELETE /complaints/1.json
  def destroy
    @complaint = Complaint.find(params[:id])
    @complaint.destroy

    respond_to do |format|
      format.html { redirect_to complaints_url }
      format.json { head :no_content }
    end
  end
end

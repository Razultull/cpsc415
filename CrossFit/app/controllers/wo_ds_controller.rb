class WoDsController < ApplicationController
  # GET /wo_ds
  # GET /wo_ds.json
  def index
    @wo_ds = WoD.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wo_ds }
    end
  end

  # GET /wo_ds/1
  # GET /wo_ds/1.json
  def show
    @wo_d = WoD.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wo_d }
    end
  end

  # GET /wo_ds/new
  # GET /wo_ds/new.json
  def new
    @wo_d = WoD.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wo_d }
    end
  end

  # GET /wo_ds/1/edit
  def edit
    @wo_d = WoD.find(params[:id])
  end

  # POST /wo_ds
  # POST /wo_ds.json
  def create
    @wo_d = WoD.new(params[:wo_d])

    respond_to do |format|
      if @wo_d.save
        format.html { redirect_to @wo_d, notice: 'Wo d was successfully created.' }
        format.json { render json: @wo_d, status: :created, location: @wo_d }
      else
        format.html { render action: "new" }
        format.json { render json: @wo_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wo_ds/1
  # PUT /wo_ds/1.json
  def update
    @wo_d = WoD.find(params[:id])

    respond_to do |format|
      if @wo_d.update_attributes(params[:wo_d])
        format.html { redirect_to @wo_d, notice: 'Wo d was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wo_d.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wo_ds/1
  # DELETE /wo_ds/1.json
  def destroy
    @wo_d = WoD.find(params[:id])
    @wo_d.destroy

    respond_to do |format|
      format.html { redirect_to wo_ds_url }
      format.json { head :no_content }
    end
  end
end

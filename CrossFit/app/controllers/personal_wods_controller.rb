class PersonalWodsController < ApplicationController
  # GET /personal_wods
  # GET /personal_wods.json
  def index
    @personal_wods = PersonalWod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_wods }
    end
  end

  # GET /personal_wods/1
  # GET /personal_wods/1.json
  def show
    @personal_wod = PersonalWod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_wod }
    end
  end

  # GET /personal_wods/new
  # GET /personal_wods/new.json
  def new
    @personal_wod = PersonalWod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_wod }
    end
  end

  # GET /personal_wods/1/edit
  def edit
    @personal_wod = PersonalWod.find(params[:id])
  end

  # POST /personal_wods
  # POST /personal_wods.json
  def create
    @personal_wod = PersonalWod.new(params[:personal_wod])

    respond_to do |format|
      if @personal_wod.save
        format.html { redirect_to @personal_wod, notice: 'Personal wod was successfully created.' }
        format.json { render json: @personal_wod, status: :created, location: @personal_wod }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_wods/1
  # PUT /personal_wods/1.json
  def update
    @personal_wod = PersonalWod.find(params[:id])

    respond_to do |format|
      if @personal_wod.update_attributes(params[:personal_wod])
        format.html { redirect_to @personal_wod, notice: 'Personal wod was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_wod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_wods/1
  # DELETE /personal_wods/1.json
  def destroy
    @personal_wod = PersonalWod.find(params[:id])
    @personal_wod.destroy

    respond_to do |format|
      format.html { redirect_to personal_wods_url }
      format.json { head :no_content }
    end
  end
end

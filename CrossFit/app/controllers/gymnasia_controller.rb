class GymnasiaController < ApplicationController
  # GET /gymnasia
  # GET /gymnasia.json
  def index
    @gymnasia = Gymnasium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gymnasia }
    end
  end

  # GET /gymnasia/1
  # GET /gymnasia/1.json
  def show
    @gymnasium = Gymnasium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gymnasium }
    end
  end

  # GET /gymnasia/new
  # GET /gymnasia/new.json
  def new
    @gymnasium = Gymnasium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gymnasium }
    end
  end

  # GET /gymnasia/1/edit
  def edit
    @gymnasium = Gymnasium.find(params[:id])
  end

  # POST /gymnasia
  # POST /gymnasia.json
  def create
    @gymnasium = Gymnasium.new(params[:gymnasium])

    respond_to do |format|
      if @gymnasium.save
        format.html { redirect_to @gymnasium, notice: 'Gymnasium was successfully created.' }
        format.json { render json: @gymnasium, status: :created, location: @gymnasium }
      else
        format.html { render action: "new" }
        format.json { render json: @gymnasium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gymnasia/1
  # PUT /gymnasia/1.json
  def update
    @gymnasium = Gymnasium.find(params[:id])

    respond_to do |format|
      if @gymnasium.update_attributes(params[:gymnasium])
        format.html { redirect_to @gymnasium, notice: 'Gymnasium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gymnasium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gymnasia/1
  # DELETE /gymnasia/1.json
  def destroy
    @gymnasium = Gymnasium.find(params[:id])
    @gymnasium.destroy

    respond_to do |format|
      format.html { redirect_to gymnasia_url }
      format.json { head :no_content }
    end
  end
end

class ChosenWorkoutsController < ApplicationController
  # GET /chosen_workouts
  # GET /chosen_workouts.json
  def index
    @chosen_workouts = ChosenWorkout.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chosen_workouts }
    end
  end

  # GET /chosen_workouts/1
  # GET /chosen_workouts/1.json
  def show
    @chosen_workout = ChosenWorkout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chosen_workout }
    end
  end

  # GET /chosen_workouts/new
  # GET /chosen_workouts/new.json
  def new
    @chosen_workout = ChosenWorkout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chosen_workout }
    end
  end

  # GET /chosen_workouts/1/edit
  def edit
    @chosen_workout = ChosenWorkout.find(params[:id])
  end

  # POST /chosen_workouts
  # POST /chosen_workouts.json
  def create
    @chosen_workout = ChosenWorkout.new(params[:chosen_workout])

    respond_to do |format|
      if @chosen_workout.save
        format.html { redirect_to @chosen_workout, notice: 'Chosen workout was successfully created.' }
        format.json { render json: @chosen_workout, status: :created, location: @chosen_workout }
      else
        format.html { render action: "new" }
        format.json { render json: @chosen_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chosen_workouts/1
  # PUT /chosen_workouts/1.json
  def update
    @chosen_workout = ChosenWorkout.find(params[:id])

    respond_to do |format|
      if @chosen_workout.update_attributes(params[:chosen_workout])
        format.html { redirect_to @chosen_workout, notice: 'Chosen workout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chosen_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chosen_workouts/1
  # DELETE /chosen_workouts/1.json
  def destroy
    @chosen_workout = ChosenWorkout.find(params[:id])
    @chosen_workout.destroy

    respond_to do |format|
      format.html { redirect_to chosen_workouts_url }
      format.json { head :no_content }
    end
  end
end

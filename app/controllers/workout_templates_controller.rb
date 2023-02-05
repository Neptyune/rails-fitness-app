class WorkoutTemplatesController < ApplicationController
  def index
    @workout_template = WorkoutTemplate.all
  end

  def show
  end

  def new
    @workout_template = WorkoutTemplate.new
  end

  def edit

  end

  def create
    @workout_template = WorkoutTemplate.new(account_params)
    if @workout_template.save
      redirect_to "/workout_templates", notice: "Workout template was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end
end

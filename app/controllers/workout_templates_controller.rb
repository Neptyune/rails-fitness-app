class WorkoutTemplatesController < ApplicationController
  def index
    @workout_template = WorkoutTemplate.all
  end

  def show
    @workout_template = WorkoutTemplate.find(params[:id])
  end

  def new
    @workout_template = WorkoutTemplate.new
  end

  def edit

  end

  def create
    # account_params[:public] = account_params[:public].to_i
    params[:workout_template][:public] = params[:workout_template][:public].to_i
    puts(params)
    puts(account_params)
    @workout_template = WorkoutTemplate.new(account_params)
    puts(@workout_template.name)

    if @workout_template.save!
      redirect_to "/workout_templates", notice: "Workout template was successfully created."
    else
      raise "workout save failed #{@workout_template.inspect}"
      render :new, status: :unprocessable_entity
    end
  end

  def account_params
    params.require(:workout_template).permit(:name, :public, :day_of_week)
  end
end

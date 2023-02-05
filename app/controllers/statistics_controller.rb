class StatisticsController < ApplicationController
    def index
    end

    def exercise
        render json: Exercises.where(, workout_id: Workouts.where(account_id: current_user.id).id)
    end
end
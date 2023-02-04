class ExerciseController < ApplicationController
  def create
    @workout = Exercise.find(params[:exercise_id])
    @exercise = @workout.exercise.create(params[:exercise].permit(:sets, :reps, :weight, :note))
    redirect_to post_path(@post)
  end



  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end

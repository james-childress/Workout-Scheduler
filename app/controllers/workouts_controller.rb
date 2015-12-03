class WorkoutsController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @workout = Workout.new 
  end

  def create
    @user = User.find(params[:user_id])
    @workout = Workout.new(workout_params)
    if @workout.save
      @user.workouts.push(@workout)
      flash[:success] = "Congrats on starting your new workout!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def workout_params
      params.require(:workout).permit(:program, :exercise, :training_max)
    end
end

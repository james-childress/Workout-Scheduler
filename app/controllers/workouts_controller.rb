#
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
      flash[:success] = 'Congrats on starting your new workout!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @workout = Workout.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @workout = Workout.find(params[:id])
    if @workout.update_attributes(workout_params)
      flash[:success] = 'Workout updated'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    Workout.find(params[:id]).destroy
    flash[:success] = 'Workout deleted'
    redirect_to @user
  end

  private

  def workout_params
    params.require(:workout).permit(:program, :exercise, :training_max)
  end
end

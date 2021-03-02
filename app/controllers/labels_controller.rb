class LabelsController < ApplicationController
  def index
    binding.pry
    @label = Label.find(1)
  end

  def new
    @label = Label.new
  end

  def create
    @label = Label.new(label_params)
    if @label.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @label = Label.find(1)
  end

  def update
    @label = Label.find(1)
    if @label.update(label_params)
      redirect_to root_path
    else
      render :edit
    end
  end
end

private

def label_params
  params.require(:label).permit(:white, :red, :pink, :orange, :green, :blue, :purple, :brown).merge(user_id: current_user.id)
end
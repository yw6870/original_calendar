
class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @city = current_user.city
    @city_en = current_user.city_en
    @events = Event.all
    @eventLists = Event.where(end_time: Date.today.all_day ).or(Event.where("end_time > ?", Date.today)).order("start_time ASC")
    @posts = Post.all.order("created_at DESC")
    @post = Post.new
    @label = Label.find(1)
  end

  def show
  end

  def new
    @event = Event.new
    @label = Label.find(1)
  end

  def edit
  end

  def create
    # binding.pry
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :content, :start_time, :end_time, :label_color).merge(user_id: current_user.id)
  end
end

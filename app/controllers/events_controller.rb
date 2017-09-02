class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  # before_action :set_events, only: [:index]

  # GET /events
  def index
    # @user_events = Event.where('user_id = ?', current_user.id)
    @events = Event.all
    # @events = current_user.event(event_params)
    # @events = current_user.events.all.order(updated_at: :desc)

    render json: @events
  end

  # GET /events/1
  def show
    # @user_events = Event.where('user_id = ?', current_user.id)
    @events = current_user.event(event_params)
    # @user = User.find(params[:id])
    # @events = Event.find(params[:id])
    # @event.user_id = current_user.id
    # @events = Event.find(:set_event)
    # @events = Event.find(params[:id])
    # render json: Event.find(params[:id])
    render json: @events
  end

  # POST /events
  def create
    @event = Event.new(event_params)
    # added
    # @event = current_user.event.build(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
     # @user = User.find(params[:id])
     @event.update(event_params)
     # @event = @user.event.find(@id)
    # WAS JUST @event.update(event_params)
    if @event.save
    render json: @event
    else
    render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
      # @event = Event.find(params[:id])
      # @event = current_user.events.find(params[:id])
      # binding.pry
    end

    def set_user
      @user_id = Event.find(params[:event['user_id']])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:title, :user_id)
    end
end

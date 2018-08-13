class StatesController < ApplicationController
   before_action :set_state, only: [:show, :update, :destroy]
  

  # GET /states
  def index
    @states = State.all
    json_response(@states)
  end

  # POST /states
  def create
    @state = State.create!(state_params)
    json_response(@state, :created)
  end

  # GET /states/:id
  def show
    json_response(@state)
  end

  # PUT /states/:id
  def update
    @state.update!(state_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @state.destroy
    head :no_content
  end

   private

  def state_params
    # whitelist params
    params.permit(:status, :status_message)
  end

  def set_state
    @state = State.find(params[:id])
  end

end

class Api::V1::TaskablesController < ApplicationController
  before_action :set_taskable, only: [:show, :update, :destroy]

  # GET /taskables
  def index
    render json: Taskable.all
  end

  # GET /taskables/1
  def show
    render json: @taskable
  end

  # POST /taskables
  def create
    @taskable = Taskable.new(taskable_params)

    if @taskable.save
      render json: @taskable, status: :created, location: [:api, :v1, @taskable]
    else
      render json: @taskable.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taskables/1
  def update
    if @taskable.update(taskable_params)
      render json: @taskable, status: :ok, location: [:api, :v1, @taskable]
    else
      render json: @taskable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taskables/1
  def destroy
    @taskable.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_taskable
    @taskable = Taskable.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def taskable_params
    params[:taskable]
  end
end

class AddPercentColumnToComponentsController < ApplicationController
  before_action :set_add_percent_column_to_component, only: [:show, :update, :destroy]

  # GET /add_percent_column_to_components
  def index
    @add_percent_column_to_components = AddPercentColumnToComponent.all

    render json: @add_percent_column_to_components
  end

  # GET /add_percent_column_to_components/1
  def show
    render json: @add_percent_column_to_component
  end

  # POST /add_percent_column_to_components
  def create
    @add_percent_column_to_component = AddPercentColumnToComponent.new(add_percent_column_to_component_params)

    if @add_percent_column_to_component.save
      render json: @add_percent_column_to_component, status: :created, location: @add_percent_column_to_component
    else
      render json: @add_percent_column_to_component.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /add_percent_column_to_components/1
  def update
    if @add_percent_column_to_component.update(add_percent_column_to_component_params)
      render json: @add_percent_column_to_component
    else
      render json: @add_percent_column_to_component.errors, status: :unprocessable_entity
    end
  end

  # DELETE /add_percent_column_to_components/1
  def destroy
    @add_percent_column_to_component.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_percent_column_to_component
      @add_percent_column_to_component = AddPercentColumnToComponent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def add_percent_column_to_component_params
      params.fetch(:add_percent_column_to_component, {})
    end
end

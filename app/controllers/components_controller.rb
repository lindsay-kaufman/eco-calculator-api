class ComponentsController < ProtectedController
  before_action :set_component, only: [:show, :update, :destroy]

  # GET /components
  def index
    @components = current_user.components.all

    render json: @components
  end

  # GET /components/1
  def show
    render json: @component
  end

  # POST /components
  def create
    @component = Component.new(component_params)

    if @component.save
      render json: @component, status: :created, location: @component
    else
      render json: @component.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /components/1
  def update
    if @component.update(component_params)
      render json: @component
    else
      render json: @component.errors, status: :unprocessable_entity
    end
  end

  # DELETE /components/1
  def destroy
    @component.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component
      @component = current_user.components.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def component_params
      params.require(:component).permit(:garment_id, :textile_id, :percent)
    end
end

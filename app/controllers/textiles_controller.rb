class TextilesController < OpenReadController
  before_action :set_textile, only: [:update, :destroy]

  # GET /textiles
  def index
    @textiles = Textile.all

    render json: @textiles
  end

  # GET /textiles/1
  def show
    render json: @textile
  end

  # POST /textiles
  def create
    @textile = current_user.textiles.build(textile_params)

    if @textile.save
      render json: @textile, status: :created, location: @textile
    else
      render json: @textile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /textiles/1
  def update
    if @textile.update(textile_params)
      render json: @textile
    else
      render json: @textile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /textiles/1
  def destroy
    @textile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_textile
      @textile = current_user.textiles.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def textile_params
      params.require(:textile).permit(:name, :impact_score, :benchmark_score)
    end
end

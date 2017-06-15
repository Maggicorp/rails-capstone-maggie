class PoemsController < OpenReadController
  before_action :set_poem, only: [:show, :update, :destroy]

# GET / published
  def published
    @poems = Poem.where(:published => true)
    render json: @poems
  end

  # GET /poems
  def index
    @poems = current_user.poems

    render json: @poems
  end

  # GET /poems/1
  def show
    render json: @poem
  end

  # POST /poems
  def create
    @poem = current_user.poems.build(poem_params)

    if @poem.save
      render json: @poem, status: :created, location: @poem
    else
      render json: @poem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poems/1
  def update
    if @poem.update(poem_params)
      render json: @poem
    else
      render json: @poem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /poems/1
  def destroy
    @poem.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poem
      @poem = current_user.poems.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poem_params
      params.require(:poem).permit(:title, :firstline, :secondline, :thirdline, :user_id)
    end
end

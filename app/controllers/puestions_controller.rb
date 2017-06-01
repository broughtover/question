class PuestionsController < ApplicationController
  before_action :set_puestion, only: [:show, :edit, :update, :destroy]

  # GET /puestions
  # GET /puestions.json
  def index
    @puestions = Puestion.all
  end

  # GET /puestions/1
  # GET /puestions/1.json
  def show
  end

  # GET /puestions/new
  def new
    @puestion = Puestion.new
  end

  # GET /puestions/1/edit
  def edit
  end

  # POST /puestions
  # POST /puestions.json
  def create
    @puestion = Puestion.new(puestion_params)

    respond_to do |format|
      if @puestion.save
        format.html { redirect_to @puestion, notice: 'Puestion was successfully created.' }
        format.json { render :show, status: :created, location: @puestion }
      else
        format.html { render :new }
        format.json { render json: @puestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puestions/1
  # PATCH/PUT /puestions/1.json
  def update
    respond_to do |format|
      if @puestion.update(puestion_params)
        format.html { redirect_to @puestion, notice: 'Puestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @puestion }
      else
        format.html { render :edit }
        format.json { render json: @puestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puestions/1
  # DELETE /puestions/1.json
  def destroy
    @puestion.destroy
    respond_to do |format|
      format.html { redirect_to puestions_url, notice: 'Puestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puestion
      @puestion = Puestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puestion_params
      params.require(:puestion).permit(:title, :message, :puestion)
    end
end

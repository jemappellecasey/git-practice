class PoltsController < ApplicationController
  before_action :set_polt, only: [:show, :edit, :update, :destroy]

  # GET /polts
  # GET /polts.json
  def index
    @polts = Polt.all
  end

  # GET /polts/1
  # GET /polts/1.json
  def show
  end

  # GET /polts/new
  def new
    @polt = Polt.new
  end

  # GET /polts/1/edit
  def edit
  end

  # POST /polts
  # POST /polts.json
  def create
    @polt = Polt.new(polt_params)

    respond_to do |format|
      if @polt.save
        format.html { redirect_to @polt, notice: 'Polt was successfully created.' }
        format.json { render :show, status: :created, location: @polt }
      else
        format.html { render :new }
        format.json { render json: @polt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polts/1
  # PATCH/PUT /polts/1.json
  def update
    respond_to do |format|
      if @polt.update(polt_params)
        format.html { redirect_to @polt, notice: 'Polt was successfully updated.' }
        format.json { render :show, status: :ok, location: @polt }
      else
        format.html { render :edit }
        format.json { render json: @polt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polts/1
  # DELETE /polts/1.json
  def destroy
    @polt.destroy
    respond_to do |format|
      format.html { redirect_to polts_url, notice: 'Polt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polt
      @polt = Polt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def polt_params
      params.require(:polt).permit(:title, :body)
    end
end

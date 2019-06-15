class CanvassesController < ApplicationController
  before_action :set_canvass, only: [:show, :edit, :update, :destroy]

  # GET /canvasses
  # GET /canvasses.json
  def index
    @canvasses = Canvass.all
  end

  # GET /canvasses/1
  # GET /canvasses/1.json
  def show
  end

  # GET /canvasses/new
  def new
    @canvass = Canvass.new
  end

  # GET /canvasses/1/edit
  def edit
  end

  # POST /canvasses
  # POST /canvasses.json
  def create
    @canvass = Canvass.new(canvass_params)

    respond_to do |format|
      if @canvass.save
        format.html { redirect_to @canvass, notice: 'Canvass was successfully created.' }
        format.json { render :show, status: :created, location: @canvass }
      else
        format.html { render :new }
        format.json { render json: @canvass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /canvasses/1
  # PATCH/PUT /canvasses/1.json
  def update
    respond_to do |format|
      if @canvass.update(canvass_params)
        format.html { redirect_to @canvass, notice: 'Canvass was successfully updated.' }
        format.json { render :show, status: :ok, location: @canvass }
      else
        format.html { render :edit }
        format.json { render json: @canvass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canvasses/1
  # DELETE /canvasses/1.json
  def destroy
    @canvass.destroy
    respond_to do |format|
      format.html { redirect_to canvasses_url, notice: 'Canvass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canvass
      @canvass = Canvass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canvass_params
      params.require(:canvass).permit(:question)
    end
end

class IngredsController < ApplicationController
  before_action :set_ingred, only: [:show, :edit, :update, :destroy]

  # GET /ingreds
  # GET /ingreds.json
  def index
    @ingreds = Ingred.all
  end

  # GET /ingreds/1
  # GET /ingreds/1.json
  def show
  end

  # GET /ingreds/new
  def new
    @ingred = Ingred.new
  end

  # GET /ingreds/1/edit
  def edit
  end

  # POST /ingreds
  # POST /ingreds.json
  def create
    @ingred = Ingred.new(ingred_params)

    respond_to do |format|
      if @ingred.save
        format.html { redirect_to @ingred, notice: 'Ingred was successfully created.' }
        format.json { render :show, status: :created, location: @ingred }
      else
        format.html { render :new }
        format.json { render json: @ingred.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingreds/1
  # PATCH/PUT /ingreds/1.json
  def update
    respond_to do |format|
      if @ingred.update(ingred_params)
        format.html { redirect_to @ingred, notice: 'Ingred was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingred }
      else
        format.html { render :edit }
        format.json { render json: @ingred.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingreds/1
  # DELETE /ingreds/1.json
  def destroy
    @ingred.destroy
    respond_to do |format|
      format.html { redirect_to ingreds_url, notice: 'Ingred was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingred
      @ingred = Ingred.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingred_params
      params.require(:ingred).permit(:recipe_id, :item_id)
    end
end

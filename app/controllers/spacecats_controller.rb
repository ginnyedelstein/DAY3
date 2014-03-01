class SpacecatsController < ApplicationController
  before_action :set_spacecat, only: [:show, :edit, :update, :destroy]

  # GET /spacecats
  # GET /spacecats.json
  def index
    @spacecats = Spacecat.all
  end

  # GET /spacecats/1
  # GET /spacecats/1.json
  def show
  end

  # GET /spacecats/new
  def new
    @spacecat = Spacecat.new
  end

  # GET /spacecats/1/edit
  def edit
  end

  # POST /spacecats
  # POST /spacecats.json
  def create
    @spacecat = Spacecat.new(spacecat_params)

    respond_to do |format|
      if @spacecat.save
        format.html { redirect_to @spacecat, notice: 'Spacecat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @spacecat }
      else
        format.html { render action: 'new' }
        format.json { render json: @spacecat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spacecats/1
  # PATCH/PUT /spacecats/1.json
  def update
    respond_to do |format|
      if @spacecat.update(spacecat_params)
        format.html { redirect_to @spacecat, notice: 'Spacecat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @spacecat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spacecats/1
  # DELETE /spacecats/1.json
  def destroy
    @spacecat.destroy
    respond_to do |format|
      format.html { redirect_to spacecats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spacecat
      @spacecat = Spacecat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spacecat_params
      params.require(:spacecat).permit(:name, :personality, :planets_visited)
    end
end

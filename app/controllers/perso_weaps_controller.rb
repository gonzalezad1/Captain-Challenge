class PersoWeapsController < ApplicationController
  before_action :set_perso_weap, only: [:show, :edit, :update, :destroy]

  # GET /perso_weaps
  # GET /perso_weaps.json
  def index
    @perso_weaps = PersoWeap.all
  end

  # GET /perso_weaps/1
  # GET /perso_weaps/1.json
  def show
  end

  # GET /perso_weaps/new
  def new
    @persos = []
    2.times do
      @persos << PersoWeap.new
    end
    @personnages= Personnage.all
    @weapons= Weapon.all
    @personnage = Personnage.new
    @weapon = Weapon.new
  end

  # GET /perso_weaps/1/edit
  def edit
  end

  # POST /perso_weaps
  # POST /perso_weaps.json
  def create
    # @perso_weap = PersoWeap.new(perso_weap_params)
    arr = []
    if params.has_key?("perso")
      PersoWeap.create(perso_weap_params(params["persos"]))
    else
      params["persos"].each do |perso|
        if perso["personnage_id"] != "" || perso["weapon_id"] != ""
          arr << PersoWeap.create(perso_weap_params(perso))
        end
      end
    end
    session[:combattant] = arr
    # respond_to do |format|
    #   if @perso_weap.save
    #     format.html { redirect_to @perso_weap, notice: 'Perso weap was successfully created.' }
    #     format.json { render :show, status: :created, location: @perso_weap }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @perso_weap.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /perso_weaps/1
  # PATCH/PUT /perso_weaps/1.json
  def update
    respond_to do |format|
      if @perso_weap.update(perso_weap_params)
        format.html { redirect_to @perso_weap, notice: 'Perso weap was successfully updated.' }
        format.json { render :show, status: :ok, location: @perso_weap }
      else
        format.html { render :edit }
        format.json { render json: @perso_weap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perso_weaps/1
  # DELETE /perso_weaps/1.json
  def destroy
    @perso_weap.destroy
    respond_to do |format|
      format.html { redirect_to perso_weaps_url, notice: 'Perso weap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_perso_weap
    @perso_weap = PersoWeap.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def perso_weap_params(my_params)
    my_params.permit(:personnage_id, :weapon_id)
    # params.require(:perso_weap).permit(:personnage_id, :weapon_id)
  end
end

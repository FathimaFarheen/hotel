class HotelmenusController < ApplicationController
  before_action :set_hotelmenu, only: [:show, :edit, :update, :destroy]

  # GET /hotelmenus
  # GET /hotelmenus.json
  def index
    @hotelmenus = Hotelmenu.all
  end

  # GET /hotelmenus/1
  # GET /hotelmenus/1.json
  def show
  end

  # GET /hotelmenus/new
  def new
    @hotelmenu = Hotelmenu.new
  end

  # GET /hotelmenus/1/edit
  def edit
  end

  # POST /hotelmenus
  # POST /hotelmenus.json
  def create
    @hotelmenu = Hotelmenu.new(hotelmenu_params)

    respond_to do |format|
      if @hotelmenu.save
        format.html { redirect_to @hotelmenu, notice: 'Hotelmenu was successfully created.' }
        format.json { render :show, status: :created, location: @hotelmenu }
      else
        format.html { render :new }
        format.json { render json: @hotelmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotelmenus/1
  # PATCH/PUT /hotelmenus/1.json
  def update
    respond_to do |format|
      if @hotelmenu.update(hotelmenu_params)
        format.html { redirect_to @hotelmenu, notice: 'Hotelmenu was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotelmenu }
      else
        format.html { render :edit }
        format.json { render json: @hotelmenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotelmenus/1
  # DELETE /hotelmenus/1.json
  def destroy
    @hotelmenu.destroy
    respond_to do |format|
      format.html { redirect_to hotelmenus_url, notice: 'Hotelmenu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotelmenu
      @hotelmenu = Hotelmenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotelmenu_params
      params.require(:hotelmenu).permit(:name)
    end
end

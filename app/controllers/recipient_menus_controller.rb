class RecipientMenusController < ApplicationController
  before_action :set_recipient_menu, only: [:show, :edit, :update, :destroy]

  # GET /recipient_menus
  # GET /recipient_menus.json
  def index
    @recipient_menus = RecipientMenu.all
  end

  # GET /recipient_menus/1
  # GET /recipient_menus/1.json
  def show
  end

  # GET /recipient_menus/new
  def new
    @recipient_menu = RecipientMenu.new
      if @Menu
        @menu = Menu.find params[:menu_id]
      end   
  end

  # GET /recipient_menus/1/edit
  def edit
  end

  # POST /recipient_menus
  # POST /recipient_menus.json
  def create
    @recipient_menu = RecipientMenu.new(recipient_menu_params)

    respond_to do |format|
      if @recipient_menu.save
        format.html { redirect_to @recipient_menu, notice: 'Recipient menu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipient_menu }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipient_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipient_menus/1
  # PATCH/PUT /recipient_menus/1.json
  def update
    respond_to do |format|
      if @recipient_menu.update(recipient_menu_params)
        format.html { redirect_to @recipient_menu, notice: 'Recipient menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipient_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipient_menus/1
  # DELETE /recipient_menus/1.json
  def destroy
    @recipient_menu.destroy
    respond_to do |format|
      format.html { redirect_to recipient_menus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipient_menu
      @recipient_menu = RecipientMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipient_menu_params
      params.require(:recipient_menu).permit(:recipient_id, :menu_id, :menu_date, :main_dish1, :main_dish2, :main_dish_choice, :side1, :side2, :side3, :side_choice, :diet)
    end
end

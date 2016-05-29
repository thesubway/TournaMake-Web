class BracketSlotsController < ApplicationController
  before_action :set_bracket_slot, only: [:show, :edit, :update, :destroy]

  # GET /bracket_slots
  # GET /bracket_slots.json
  def index
    @bracket_slots = BracketSlot.all
  end

  # GET /bracket_slots/1
  # GET /bracket_slots/1.json
  def show
  end

  # GET /bracket_slots/new
  def new
    @bracket_slot = BracketSlot.new
  end

  # GET /bracket_slots/1/edit
  def edit
  end

  # POST /bracket_slots
  # POST /bracket_slots.json
  def create
    @bracket_slot = BracketSlot.new(bracket_slot_params)

    respond_to do |format|
      if @bracket_slot.save
        format.html { redirect_to @bracket_slot, notice: 'Bracket slot was successfully created.' }
        format.json { render :show, status: :created, location: @bracket_slot }
      else
        format.html { render :new }
        format.json { render json: @bracket_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bracket_slots/1
  # PATCH/PUT /bracket_slots/1.json
  def update
    respond_to do |format|
      if @bracket_slot.update(bracket_slot_params)
        format.html { redirect_to @bracket_slot, notice: 'Bracket slot was successfully updated.' }
        format.json { render :show, status: :ok, location: @bracket_slot }
      else
        format.html { render :edit }
        format.json { render json: @bracket_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bracket_slots/1
  # DELETE /bracket_slots/1.json
  def destroy
    @bracket_slot.destroy
    respond_to do |format|
      format.html { redirect_to bracket_slots_url, notice: 'Bracket slot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bracket_slot
      @bracket_slot = BracketSlot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bracket_slot_params
      params.require(:bracket_slot).permit(:seedLeft, :seedRight, :slotNum, :bracket_id)
    end
end

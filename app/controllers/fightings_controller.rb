class FightingsController < ApplicationController
  before_action :set_fighting, only: [:show, :edit, :update, :destroy]

  # GET /fightings
  # GET /fightings.json
  def index
    @fightings = Fighting.all
  end

  # GET /fightings/1
  # GET /fightings/1.json
  def show
      @fighting_records = @fighting.fighting_record.all
  end

  # GET /fightings/new
  def new
    @fighting = Fighting.new
  end

  # GET /fightings/1/edit
  def edit
  end

  def add_record
      record = FightingRecord.new
      record.dt = DateTime.now
      fighting_id = params[:fighting][:id]
      record.fighting = Fighting.find(fighting_id)
      record.notes = params[:notes]
      saved = record.save
      redirect_to fightings_path if saved 
  end

  # POST /fightings
  # POST /fightings.json
  def create
    @fighting = Fighting.new(fighting_params)

    respond_to do |format|
      if @fighting.save
        format.html { redirect_to @fighting, notice: 'Fighting was successfully created.' }
        format.json { render :show, status: :created, location: @fighting }
      else
        format.html { render :new }
        format.json { render json: @fighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fightings/1
  # PATCH/PUT /fightings/1.json
  def update
    respond_to do |format|
      if @fighting.update(fighting_params)
        format.html { redirect_to @fighting, notice: 'Fighting was successfully updated.' }
        format.json { render :show, status: :ok, location: @fighting }
      else
        format.html { render :edit }
        format.json { render json: @fighting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fightings/1
  # DELETE /fightings/1.json
  def destroy
    @fighting.destroy
    respond_to do |format|
      format.html { redirect_to fightings_url, notice: 'Fighting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fighting
      @fighting = Fighting.find(params[:id])
    end

    def add_fighting_record_params
        params.require(:fighting).permit(:id)
    end

    def fighting_record_notes_params
        params.permit(:notes)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fighting_params
      params.require(:fighting).permit(:name)
    end
end

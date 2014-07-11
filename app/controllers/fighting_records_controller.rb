class FightingRecordsController < ApplicationController
  before_action :set_fighting_record, only: [:show, :edit, :update, :destroy]

  # GET /fighting_records
  # GET /fighting_records.json
  def index
    @fighting_records = FightingRecord.all
  end

  # GET /fighting_records/1
  # GET /fighting_records/1.json
  def show
  end

  # GET /fighting_records/new
  def new
    @fighting_record = FightingRecord.new
  end

  # GET /fighting_records/1/edit
  def edit
  end

  # POST /fighting_records
  # POST /fighting_records.json
  def create
    @fighting_record = FightingRecord.new(fighting_record_params)

    respond_to do |format|
      if @fighting_record.save
        format.html { redirect_to @fighting_record, notice: 'Fighting record was successfully created.' }
        format.json { render :show, status: :created, location: @fighting_record }
      else
        format.html { render :new }
        format.json { render json: @fighting_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fighting_records/1
  # PATCH/PUT /fighting_records/1.json
  def update
    respond_to do |format|
      if @fighting_record.update(fighting_record_params)
        format.html { redirect_to @fighting_record, notice: 'Fighting record was successfully updated.' }
        format.json { render :show, status: :ok, location: @fighting_record }
      else
        format.html { render :edit }
        format.json { render json: @fighting_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fighting_records/1
  # DELETE /fighting_records/1.json
  def destroy
    @fighting_record.destroy
    respond_to do |format|
      format.html { redirect_to fighting_records_url, notice: 'Fighting record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fighting_record
      @fighting_record = FightingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fighting_record_params
      params.require(:fighting_record).permit(:dt, :notes, :Fighting)
    end
end

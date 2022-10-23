class MastercarsController < ApplicationController
  before_action :set_mastercar, only: %i[ show edit update destroy ]

  # GET /mastercars or /mastercars.json
  def index
    @mastercars = Mastercar.all
    @mastercars = Mastercar.order(created_at: :desc)
  end

  # GET /mastercars/1 or /mastercars/1.json
  def show
  end

  # GET /mastercars/new
  def new
    @mastercar = Mastercar.new
  end

  # GET /mastercars/1/edit
  def edit
  end

  # POST /mastercars or /mastercars.json
  def create
    @mastercar = Mastercar.new(mastercar_params)
    if @mastercar.save
      redirect_to "/mastercars"
    # respond_to do |format|
    #   if @mastercar.save
    #     format.html { redirect_to mastercar_url(@mastercar), notice: "Отзыв родился!" }
    #     format.json { render :show, status: :created, location: @mastercar }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @mastercar.errors, status: :unprocessable_entity }
    #   end
    end
  end

  # PATCH/PUT /mastercars/1 or /mastercars/1.json
  def update
    respond_to do |format|
      if @mastercar.update(mastercar_params)
        format.html { redirect_to mastercar_url(@mastercar), notice: "Mastercar was successfully updated." }
        format.json { render :show, status: :ok, location: @mastercar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mastercar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mastercars/1 or /mastercars/1.json
  def destroy
    @mastercar.destroy

    respond_to do |format|
      format.html { redirect_to mastercars_url, notice: "Mastercar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mastercar
      @mastercar = Mastercar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mastercar_params
      params.require(:mastercar).permit(:strana, :strana1, :truck, :driver, :manager, :rating)
    end
end

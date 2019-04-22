class MassageTypesController < ApplicationController
  before_action :set_massage_type, only: [:show, :edit, :update, :destroy]

  # GET /massage_types
  # GET /massage_types.json
  def index
    @massage_types = MassageType.all
  end

  # GET /massage_types/1
  # GET /massage_types/1.json
  def show
  end

  # GET /massage_types/new
  def new
    @massage_type = MassageType.new
  end

  # GET /massage_types/1/edit
  def edit
  end

  # POST /massage_types
  # POST /massage_types.json
  def create
    @massage_type = MassageType.new(massage_type_params)

    respond_to do |format|
      if @massage_type.save
        format.html { redirect_to @massage_type, notice: 'Massage type was successfully created.' }
        format.json { render :show, status: :created, location: @massage_type }
      else
        format.html { render :new }
        format.json { render json: @massage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /massage_types/1
  # PATCH/PUT /massage_types/1.json
  def update
    respond_to do |format|
      if @massage_type.update(massage_type_params)
        format.html { redirect_to @massage_type, notice: 'Massage type was successfully updated.' }
        format.json { render :show, status: :ok, location: @massage_type }
      else
        format.html { render :edit }
        format.json { render json: @massage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /massage_types/1
  # DELETE /massage_types/1.json
  def destroy
    @massage_type.destroy
    respond_to do |format|
      format.html { redirect_to massage_types_url, notice: 'Massage type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_massage_type
      @massage_type = MassageType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def massage_type_params
      params.require(:massage_type).permit(:title, :body)
    end
end

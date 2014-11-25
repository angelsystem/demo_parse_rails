class PromotorsController < ApplicationController
  before_action :set_promotor, only: [:show, :edit, :update, :destroy]

  # GET /promotors
  # GET /promotors.json
  def index
    @promotors = Promotor.all
  end

  # GET /promotors/1
  # GET /promotors/1.json
  def show
  end

  # GET /promotors/new
  def new
    @promotor = Promotor.new
  end

  # GET /promotors/1/edit
  def edit
  end

  # POST /promotors
  # POST /promotors.json
  def create
    @promotor = Promotor.new(promotor_params)

    respond_to do |format|
      if @promotor.save
        format.html { redirect_to @promotor, notice: 'Promotor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @promotor }
      else
        format.html { render action: 'new' }
        format.json { render json: @promotor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotors/1
  # PATCH/PUT /promotors/1.json
  def update
    respond_to do |format|
      if @promotor.update(promotor_params)
        format.html { redirect_to @promotor, notice: 'Promotor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @promotor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotors/1
  # DELETE /promotors/1.json
  def destroy
    @promotor.destroy
    respond_to do |format|
      format.html { redirect_to promotors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotor
      @promotor = Promotor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotor_params
      params.require(:promotor).permit(:name, :lastname, :email, :dni)
    end
end

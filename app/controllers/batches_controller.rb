class BatchesController < ApplicationController
  # GET /batches/new
  def new
    @batch = Batch.new
  end

  # POST /batches
  # POST /batches.json
  def create
    @batch = Batch.new(batch_params)
    @batch.csv = params[:batch][:file].read if params[:batch][:file].present?

    respond_to do |format|
      if @batch.save
        format.html { redirect_to root_path, notice: 'Batch submitted.' }
        format.json { render :show, status: :created, location: @batch }
      else
        format.html { render :new }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch
      @batch = Batch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def batch_params
      params.require(:batch).permit(:csv)
    end
end

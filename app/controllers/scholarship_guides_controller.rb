class ScholarshipGuidesController < ApplicationController
  before_action :set_scholarship_guide, only: [:show, :edit, :update, :destroy]

  # GET /scholarship_guides
  # GET /scholarship_guides.json
  def index
    @scholarship_guides = ScholarshipGuide.all
  end

  # GET /scholarship_guides/1
  # GET /scholarship_guides/1.json
  def show
  end

  # GET /scholarship_guides/new
  def new
    @scholarship_guide = ScholarshipGuide.new
  end

  # GET /scholarship_guides/1/edit
  def edit
  end

  # POST /scholarship_guides
  # POST /scholarship_guides.json
  def create
    @scholarship_guide = ScholarshipGuide.new(scholarship_guide_params)

    respond_to do |format|
      if @scholarship_guide.save
        format.html { redirect_to @scholarship_guide, notice: 'Scholarship guide was successfully created.' }
        format.json { render :show, status: :created, location: @scholarship_guide }
      else
        format.html { render :new }
        format.json { render json: @scholarship_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scholarship_guides/1
  # PATCH/PUT /scholarship_guides/1.json
  def update
    respond_to do |format|
      if @scholarship_guide.update(scholarship_guide_params)
        format.html { redirect_to @scholarship_guide, notice: 'Scholarship guide was successfully updated.' }
        format.json { render :show, status: :ok, location: @scholarship_guide }
      else
        format.html { render :edit }
        format.json { render json: @scholarship_guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scholarship_guides/1
  # DELETE /scholarship_guides/1.json
  def destroy
    @scholarship_guide.destroy
    respond_to do |format|
      format.html { redirect_to scholarship_guides_url, notice: 'Scholarship guide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholarship_guide
      @scholarship_guide = ScholarshipGuide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scholarship_guide_params
      params.require(:scholarship_guide).permit(:program_name, :image_url, :metric_box1, :metric_box2, :metric_box3, :description_short, :description_long, :app_count, :essay_count, :transcript_count, :resume_count, :time_estimate)
    end
end

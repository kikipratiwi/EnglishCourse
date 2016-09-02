class ReportsController < ApplicationController

  before_action :set_student

  def index
    @reports = @student.get_avg
  end

  def show
    @reports = @student.get_lesson(params[:id])
  end

  def new
    @report = Report.new
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = @student.reports.create(report_params)
    respond_to do |format|
      if @report.save
        format.html { redirect_to @student, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @student }
        format.js
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report = @student.reports.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to student_path(@student), notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
      format.js   { render :layout => false } 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:student_id])
    end
    
    def set_lesson
      @lesson = Lesson.find(params[:lesson_id])
    end

    def set_report
      @report = Report.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_params
      params.require(:report).permit(:lesson_id, :score)
    end
end

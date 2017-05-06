class TopTutorsController < ApplicationController
  before_action :set_top_tutor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index]
   before_action :check_user, except:[:index, :show]

  # GET /top_tutors
  # GET /top_tutors.json
  def index
    @top_tutors = TopTutor.all
  end

  # GET /top_tutors/1
  # GET /top_tutors/1.json
  def show
  end

  # GET /top_tutors/new
  def new
    @top_tutor = TopTutor.new
  end

  # GET /top_tutors/1/edit
  def edit
  end

  # POST /top_tutors
  # POST /top_tutors.json
  def create
    @top_tutor = TopTutor.new(top_tutor_params)

    respond_to do |format|
      if @top_tutor.save
        format.html { redirect_to @top_tutor, notice: 'Top tutor was successfully created.' }
        format.json { render :show, status: :created, location: @top_tutor }
      else
        format.html { render :new }
        format.json { render json: @top_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_tutors/1
  # PATCH/PUT /top_tutors/1.json
  def update
    respond_to do |format|
      if @top_tutor.update(top_tutor_params)
        format.html { redirect_to @top_tutor, notice: 'Top tutor was successfully updated.' }
        format.json { render :show, status: :ok, location: @top_tutor }
      else
        format.html { render :edit }
        format.json { render json: @top_tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_tutors/1
  # DELETE /top_tutors/1.json
  def destroy
    @top_tutor.destroy
    respond_to do |format|
      format.html { redirect_to top_tutors_url, notice: 'Top tutor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_tutor
      @top_tutor = TopTutor.find(params[:id])
    end
    
def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, only admins can do that"

      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def top_tutor_params
      params.require(:top_tutor).permit(:name, :about_me, :phone, :email, :experience, :qualification, :courses, :address, :image)
    end
end

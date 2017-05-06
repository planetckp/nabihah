class PopularInstitutesController < ApplicationController
  before_action :set_popular_institute, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]
   before_action :check_user, except:[:index, :show]

  # GET /popular_institutes
  # GET /popular_institutes.json
  def index
    @popular_institutes = PopularInstitute.all
  end

  # GET /popular_institutes/1
  # GET /popular_institutes/1.json
  def show
  end

  # GET /popular_institutes/new
  def new
    @popular_institute = PopularInstitute.new
  end

  # GET /popular_institutes/1/edit
  def edit
  end

  # POST /popular_institutes
  # POST /popular_institutes.json
  def create
    @popular_institute = PopularInstitute.new(popular_institute_params)

    respond_to do |format|
      if @popular_institute.save
        format.html { redirect_to @popular_institute, notice: 'Popular institute was successfully created.' }
        format.json { render :show, status: :created, location: @popular_institute }
      else
        format.html { render :new }
        format.json { render json: @popular_institute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /popular_institutes/1
  # PATCH/PUT /popular_institutes/1.json
  def update
    respond_to do |format|
      if @popular_institute.update(popular_institute_params)
        format.html { redirect_to @popular_institute, notice: 'Popular institute was successfully updated.' }
        format.json { render :show, status: :ok, location: @popular_institute }
      else
        format.html { render :edit }
        format.json { render json: @popular_institute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /popular_institutes/1
  # DELETE /popular_institutes/1.json
  def destroy
    @popular_institute.destroy
    respond_to do |format|
      format.html { redirect_to popular_institutes_url, notice: 'Popular institute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_popular_institute
      @popular_institute = PopularInstitute.find(params[:id])
    end

    def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, only admins can do that"

      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def popular_institute_params
      params.require(:popular_institute).permit(:name, :about_us, :estd, :phone, :email, :class_type, :courses, :address, :image)
    end
end

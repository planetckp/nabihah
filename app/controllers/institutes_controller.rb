class InstitutesController < ApplicationController
  before_action :set_institute, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index]
   before_action :check_user, except:[:index, :show]

  # GET /institutes
  # GET /institutes.json
  def index
    @institutes = Institute.all
  end

  # GET /institutes/1
  # GET /institutes/1.json
  def show
  end

  # GET /institutes/new
  def new
    @institute = Institute.new
  end

  # GET /institutes/1/edit
  def edit
  end

  # POST /institutes
  # POST /institutes.json
  def create
    @institute = Institute.new(institute_params)

    respond_to do |format|
      if @institute.save
        format.html { redirect_to @institute, notice: 'Institute was successfully created.' }
        format.json { render :show, status: :created, location: @institute }
      else
        format.html { render :new }
        format.json { render json: @institute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutes/1
  # PATCH/PUT /institutes/1.json
  def update
    respond_to do |format|
      if @institute.update(institute_params)
        format.html { redirect_to @institute, notice: 'Institute was successfully updated.' }
        format.json { render :show, status: :ok, location: @institute }
      else
        format.html { render :edit }
        format.json { render json: @institute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutes/1
  # DELETE /institutes/1.json
  def destroy
    @institute.destroy
    respond_to do |format|
      format.html { redirect_to institutes_url, notice: 'Institute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institute
      @institute = Institute.find(params[:id])
    end

def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, only admins can do that"

      end
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def institute_params
      params.require(:institute).permit(:name, :about_us, :estd, :phone, :email, :class_type, :courses, :address, :image)
    end
end

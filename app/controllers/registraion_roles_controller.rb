class RegistraionRolesController < ApplicationController
  before_action :set_registraion_role, only: [:show, :edit, :update, :destroy]

  # GET /registraion_roles
  # GET /registraion_roles.json
  def index
    @registraion_roles = RegistraionRole.all
  end

  # GET /registraion_roles/1
  # GET /registraion_roles/1.json
  def show
  end

  # GET /registraion_roles/new
  def new
    @registraion_role = RegistraionRole.new
  end

  # GET /registraion_roles/1/edit
  def edit
  end

  # POST /registraion_roles
  # POST /registraion_roles.json
  def create
    @registraion_role = RegistraionRole.new(registraion_role_params)

    respond_to do |format|
      if @registraion_role.save
        format.html { redirect_to @registraion_role, notice: 'Registraion role was successfully created.' }
        format.json { render :show, status: :created, location: @registraion_role }
      else
        format.html { render :new }
        format.json { render json: @registraion_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registraion_roles/1
  # PATCH/PUT /registraion_roles/1.json
  def update
    respond_to do |format|
      if @registraion_role.update(registraion_role_params)
        format.html { redirect_to @registraion_role, notice: 'Registraion role was successfully updated.' }
        format.json { render :show, status: :ok, location: @registraion_role }
      else
        format.html { render :edit }
        format.json { render json: @registraion_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registraion_roles/1
  # DELETE /registraion_roles/1.json
  def destroy
    @registraion_role.destroy
    respond_to do |format|
      format.html { redirect_to registraion_roles_url, notice: 'Registraion role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registraion_role
      @registraion_role = RegistraionRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registraion_role_params
      params.require(:registraion_role).permit(:name, :email)
    end
end

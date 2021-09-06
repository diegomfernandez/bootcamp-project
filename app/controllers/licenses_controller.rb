class LicensesController < ApplicationController
  def index
    @licenses = License.all
  end
  def show
    @license = License.find(params[:id])
  end
  def new
    @propietario=
    @license = License.new
  end
  def create
    @license = License.new(license_params)
    if @license.save
      redirect_to @license
    else
      render :new, status: :unprocessable_entity
    end
    @license.update(license_params)
  end
  def edit
    @license = License.find(params[:id])
  end

  def update
    @license = License.find(params[:id])

    if @license.update(license_params)
      redirect_to @license
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @license = License.find(params[:id])
    @license.destroy

    redirect_to licenses_path
  end
  
  private
    def license_params
      params.require(:license).permit(:numero,:tipo,:propietario_id,:fecha_caducidad)
    end
end

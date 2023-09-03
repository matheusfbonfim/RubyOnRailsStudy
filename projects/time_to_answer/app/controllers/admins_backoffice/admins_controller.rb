class AdminsBackoffice::AdminsController < AdminsBackofficeController
  before_action :set_resource, only: [:edit, :update]
  
  def index
    @admins = Admin.all
  end

  def edit
  end

  def update
    if @admin.update(safe_parameters)
      redirect_to admins_backoffice_admins_path, notice: "Administrador atualizado com sucesso!"
    else
      render :edit
    end
  end

  def set_resource
    @admin = Admin.find(params[:id])
  end

  def safe_parameters
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end

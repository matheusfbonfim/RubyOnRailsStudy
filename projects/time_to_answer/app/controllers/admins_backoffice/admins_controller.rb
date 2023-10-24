class AdminsBackoffice::AdminsController < AdminsBackofficeController
  before_action :password_verify, only: [:update]
  before_action :set_resource, only: [:edit, :update, :destroy]
 
  def index
    @admins = Admin.all.page(params[:page])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(safe_parameters)
    
    if @admin.save
      redirect_to admins_backoffice_admins_path, notice: "Administrador criado com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @admin.update(safe_parameters)
      AdminMailer.update_email(current_admin, @admin).deliver_now
      redirect_to admins_backoffice_admins_path, notice: "Administrador atualizado com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    if @admin.destroy
      redirect_to admins_backoffice_admins_path, notice: "Administrador excluído com sucesso!"
    else
      render :index
    end
  end

  private

  def password_verify
    if params[:admin][:password].blank? && params[:admin][:password_confirmation].blank?
      params[:admin].extract!(:password, :password_confirmation)
    end
  end

  def set_resource
    @admin = Admin.find(params[:id])
  end

  def safe_parameters
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end

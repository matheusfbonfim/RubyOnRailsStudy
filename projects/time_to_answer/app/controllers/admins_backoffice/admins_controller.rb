class AdminsBackoffice::AdminsController < AdminsBackofficeController
  before_action :set_resource, only: [:edit]
  
  def index
    @admins = Admin.all
  end

  def edit
  end

  def destroy
  end

  def set_resource
    @admin = Admin.find(params[:id])
  end
end

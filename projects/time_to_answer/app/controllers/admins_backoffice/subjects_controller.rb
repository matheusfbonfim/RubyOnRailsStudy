class AdminsBackoffice::SubjectsController < AdminsBackofficeController
  before_action :set_resource, only: [:edit, :update, :destroy]
 
  def index
    respond_to do |format|
      format.html { @subjects = Subject.all.order(:description).page(params[:page]) }
      format.pdf { @subjects = Subject.all.order(:description) }
      format.json { @subjects = Subject.all.order(:description) }
    end
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(safe_parameters)
    
    if @subject.save
      redirect_to admins_backoffice_subjects_path, notice: "Assunto criado com sucesso!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @subject.update(safe_parameters)
      redirect_to admins_backoffice_subjects_path, notice: "Assunto atualizado com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    if @subject.destroy
      redirect_to admins_backoffice_subjects_path, notice: "Assunto excluído com sucesso!"
    else
      render :index
    end
  end

  private

  def set_resource
    @subject = Subject.find(params[:id])
  end

  def safe_parameters
    params.require(:subject).permit(:description)
  end
end


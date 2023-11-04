module SiteHelper
  def msg_jumbotron
    case params[:action]
    when 'index'
      "Últimas Perguntas cadastradas"
    when 'questions'
      "Resultados para o termo #{sanitize params[:term]}"
    when 'subject'
      "Mostrando questões para o assunto \"#{sanitize Subject.find_by(id: params[:subject_id]).description}\""
    end   
  end
end

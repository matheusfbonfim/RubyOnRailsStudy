class Site::AnswerController < SiteController
  def question 
    # @answer = Answer.find(params[:answer_id])

    @question_id, @correct = Rails.cache.read(params[:answer_id]).split("@@")
    @correct = ActiveModel::Type::Boolean.new.cast(@correct)

    UserStatistic.set_user_statistic(@correct, current_user)
  end
end 

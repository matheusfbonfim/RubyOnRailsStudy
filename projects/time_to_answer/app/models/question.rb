class Question < ApplicationRecord
  belongs_to :subject
  
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  # Kaminari
  paginates_per 5

  # Scopes
  scope :_search_, -> (page, term) {
    includes(:answers)
    .where("lower(description) LIKE ?", "%#{term.downcase}%")
    .page(page)
  }

  scope :last_questions, -> (page) {
    includes(:answers).order('created_at desc').page(params[:page])
  }
end

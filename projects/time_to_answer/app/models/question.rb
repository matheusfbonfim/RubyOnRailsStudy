class Question < ApplicationRecord
  belongs_to :subject
  
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  # Kaminari
  paginates_per 5
end

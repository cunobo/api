class Entry < ActiveRecord::Base
  belongs_to :student_question
  belongs_to :user

  validates :student_question_id, presence: true

  scope :by_latest, -> { order('created_at desc') }
end

class Exam < ApplicationRecord
	validates :subject, presence: true
	validates :date, presence: true
	validates :time, presence: true

	# validations
  	validates_presence_of :subject, :date, :time
end

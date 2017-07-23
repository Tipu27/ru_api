class Exam < ApplicationRecord
	validates :subject, presence: true
	validates :date, presence: true
	validates :time, presence: true
end

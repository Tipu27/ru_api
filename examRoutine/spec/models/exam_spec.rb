require 'rails_helper'

RSpec.describe Exam, type: :model do

	before :each do
		@exam = Exam.new
	end
  	# ensure columns title and created_by are present before saving
  	# it { should validate_presence_of(:subject) }
  	# it { should validate_presence_of(:date) }
  	# it { should validate_presence_of(:time) }
  	
  	it "is valid with valid attributes" do
		@exam.subject = "Mathmatics"
		@exam.date  = "01-10-17"
		@exam.time      = "12:20"
		expect(@exam).to be_valid
	end

	it "is not valid without a subject" do
		@exam.subject = nil
		expect(@exam).to_not be_valid
	end

	it "is not vaild without a date" do
		@exam.date = nil
		expect(@exam).to_not be_valid
	end

	it "is not vaild without a time" do
		@exam.time = nil
		expect(@exam).to_not be_valid
	end
end

class ExamSerializer < ActiveModel::Serializer
  attributes :id, :subject, :date, :time
end

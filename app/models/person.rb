class Person < ActiveRecord::Base
  belongs_to :schooling
  belongs_to :maritalStatus
  belongs_to :race
  belongs_to :complaint
  attr_accessible :averageIncome, :birthPlace, :birthday, :daughters, :handicap, :houseStatus, :identification, :incidents, :lastname, :name, :ocupation, :repeatOffender, :sons, :schooling_id, :maritalStatus_id, :race_id
end

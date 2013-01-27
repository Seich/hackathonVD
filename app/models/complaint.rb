class Complaint < ActiveRecord::Base
  belongs_to :complaintType
  belongs_to :department
  belongs_to :municipality
  belongs_to :place
  belongs_to :institution
  has_one :plaintiff, :class_name => "Person"
  has_one :defendant, :class_name => "Person"

  attr_accessible :description, :first_hearing_date, :incident_date, :observations, 
                  :second_hearing_date, :sentencing_date, :status
end

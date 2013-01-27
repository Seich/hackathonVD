class Complaint < ActiveRecord::Base
  belongs_to :complaintType
  belongs_to :department
  belongs_to :municipality
  belongs_to :place
  belongs_to :institution
  has_one :plaintiff, :class_name => "Person"
  has_one :defendant, :class_name => "Person"

  accepts_nested_attributes_for :plaintiff
  accepts_nested_attributes_for :defendant

  attr_accessible :description, :first_hearing_date, :incident_date, :observations, 
                  :second_hearing_date, :sentencing_date, :status, :plaintiff_attributes, :defendant_attributes, :complaintType_id, :department_id, :municipality_id, :place_id, :institution_id
end

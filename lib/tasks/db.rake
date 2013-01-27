namespace :db do
  desc "Fill the database"
  task :populate => :environment do
    Person.delete_all
    Complaint.delete_all
    1000.times do
      c = Complaint.create(
          "plaintiff_attributes" => {
            "schooling_id" => 1,
            "maritalStatus_id" => 1,
            "race_id" => 1,
            "averageIncome" =>  (Random.rand * 10000).floor + 4000,
            "birthPlace" => Faker::Address.city, 
            "birthday" => rand(12...40).years.ago, 
            "daughters" => (Random.rand * 13).floor, 
            "handicap" => (Random.rand * 3).floor >= 2, 
            "houseStatus" => %w{Propia Alquilada Propia}.sample, 
            "identification" => Faker::PhoneNumber.phone_number,
            "incidents" => (Random.rand * 3).floor, 
            "lastname" => Faker::Name.last_name, 
            "name" => Faker::Name.first_name, 
            "ocupation" => Faker::Lorem.word, 
            "repeatOffender" => %w{s n}.sample,  
            "sons" => (Random.rand * 13).floor
          }, 

          "defendant_attributes" => {
            "schooling_id" => 1,
            "maritalStatus_id" => 1,
            "race_id" => 1,
            "averageIncome" =>  (Random.rand * 10000).floor + 4000,
            "birthPlace" => Faker::Address.city, 
            "birthday" => rand(30...50).years.ago, 
            "daughters" => (Random.rand * 13).floor, 
            "handicap" => (Random.rand * 3).floor >= 2, 
            "houseStatus" => %w{Propia Alquilada Propia}.sample, 
            "identification" => Faker::PhoneNumber.phone_number,
            "incidents" => (Random.rand * 3).floor, 
            "lastname" => Faker::Name.last_name, 
            "name" => Faker::Name.first_name, 
            "ocupation" => Faker::Lorem.word, 
            "repeatOffender" => %w{s n}.sample,  
            "sons" => (Random.rand * 13).floor
          }, 

          "complaintType_id" => 1, 
          "department_id" => 1, 
          "municipality_id" => 1, 
          "place_id" => 1, 
          "institution_id" => 1, 
          "description" => Faker::Lorem.sentence, 
          "status" => %w{conLugar sinLugar sobreseido caducado}.sample, 
          "incident_date" => (1..500).to_a.sample.days.ago, 
          "first_hearing_date" => (1..500).to_a.sample.days.ago, 
          "second_hearing_date" => (1..500).to_a.sample.days.ago, 
          "sentencing_date" => (1..500).to_a.sample.days.ago, 
          "observations" => Faker::Lorem.sentence
        )
    end
  end

end

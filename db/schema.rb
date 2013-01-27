# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130127160643) do

  create_table "complaint_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "complaints", :force => true do |t|
    t.integer  "complaintType_id"
    t.integer  "department_id"
    t.integer  "municipality_id"
    t.integer  "place_id"
    t.integer  "institution_id"
    t.text     "description"
    t.string   "status"
    t.date     "incident_date"
    t.date     "first_hearing_date"
    t.date     "second_hearing_date"
    t.date     "sentencing_date"
    t.text     "observations"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "complaints", ["complaintType_id"], :name => "index_complaints_on_complaintType_id"
  add_index "complaints", ["department_id"], :name => "index_complaints_on_department_id"
  add_index "complaints", ["institution_id"], :name => "index_complaints_on_institution_id"
  add_index "complaints", ["municipality_id"], :name => "index_complaints_on_municipality_id"
  add_index "complaints", ["place_id"], :name => "index_complaints_on_place_id"

  create_table "denuncia", :force => true do |t|
    t.integer  "tipo_id"
    t.integer  "departamento_id"
    t.integer  "municipio_id"
    t.integer  "lugar_id"
    t.date     "fecha_incidente"
    t.date     "fecha_primera_audiencia"
    t.date     "fecha_segunda_audiencia"
    t.date     "fecha_sentencia"
    t.string   "estado"
    t.integer  "institucion_id"
    t.text     "observaciones"
    t.text     "descripcion_hechos"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "denuncia", ["departamento_id"], :name => "index_denuncia_on_departamento_id"
  add_index "denuncia", ["institucion_id"], :name => "index_denuncia_on_institucion_id"
  add_index "denuncia", ["lugar_id"], :name => "index_denuncia_on_lugar_id"
  add_index "denuncia", ["municipio_id"], :name => "index_denuncia_on_municipio_id"
  add_index "denuncia", ["tipo_id"], :name => "index_denuncia_on_tipo_id"

  create_table "denuncia_tipos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departamentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "escolaridads", :force => true do |t|
    t.string   "grado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estado_civils", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "etnias", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "institucions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "institutions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lugars", :force => true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.integer  "municipio_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "lugars", ["municipio_id"], :name => "index_lugars_on_municipio_id"

  create_table "marital_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "municipalities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "municipios", :force => true do |t|
    t.string   "nombre"
    t.integer  "departamento_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "municipios", ["departamento_id"], :name => "index_municipios_on_departamento_id"

  create_table "people", :force => true do |t|
    t.integer  "schooling_id"
    t.integer  "maritalStatus_id"
    t.integer  "race_id"
    t.integer  "complaint_id"
    t.string   "lastname"
    t.string   "houseStatus"
    t.string   "identification"
    t.boolean  "handicap"
    t.date     "birthday"
    t.integer  "daughters"
    t.integer  "sons"
    t.integer  "incidents"
    t.integer  "averageIncome"
    t.string   "birthPlace"
    t.string   "name"
    t.string   "ocupation"
    t.string   "repeatOffender"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "people", ["complaint_id"], :name => "index_people_on_complaint_id"
  add_index "people", ["maritalStatus_id"], :name => "index_people_on_maritalStatus_id"
  add_index "people", ["race_id"], :name => "index_people_on_race_id"
  add_index "people", ["schooling_id"], :name => "index_people_on_schooling_id"

  create_table "personas", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.string   "lugar_nacimiento"
    t.date     "fecha_nacimiento"
    t.integer  "escolaridad_id"
    t.string   "ocupacion"
    t.integer  "estado_civil_id"
    t.boolean  "discapacidad"
    t.boolean  "reincidente"
    t.integer  "incidentes"
    t.integer  "hijos"
    t.integer  "hijas"
    t.string   "casa"
    t.integer  "ingreso_promedio"
    t.string   "jafatura_hogar"
    t.integer  "etnia_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "personas", ["escolaridad_id"], :name => "index_personas_on_escolaridad_id"
  add_index "personas", ["estado_civil_id"], :name => "index_personas_on_estado_civil_id"

  create_table "places", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schoolings", :force => true do |t|
    t.string   "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

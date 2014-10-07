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

ActiveRecord::Schema.define(:version => 20140929201534) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "actualites", :force => true do |t|
    t.string   "titleActu"
    t.text     "contenu"
    t.integer  "categoryActu_id"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "picture"
  end

  add_index "actualites", ["categoryActu_id"], :name => "index_actualites_on_categoryActu_id"
  add_index "actualites", ["user_id"], :name => "index_actualites_on_user_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "annonces", :force => true do |t|
    t.string   "titleAnnonce"
    t.text     "descAnnonce"
    t.date     "date_debut"
    t.date     "date_fin"
    t.integer  "categoryAnnonce_id"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "annonces", ["categoryAnnonce_id"], :name => "index_annonces_on_categoryAnnonce_id"
  add_index "annonces", ["user_id"], :name => "index_annonces_on_user_id"

  create_table "category_actus", :force => true do |t|
    t.string   "titleCategory"
    t.text     "descCategory"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "category_annonces", :force => true do |t|
    t.string   "titleCategory"
    t.text     "descCategory"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "category_events", :force => true do |t|
    t.string   "titleCategory"
    t.text     "descCategory"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "category_galeries", :force => true do |t|
    t.string   "titleCategory"
    t.text     "desc"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "djanoa_messages", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.string   "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "titleEvent"
    t.string   "descEvent"
    t.integer  "nombrePersonne"
    t.date     "date_debut"
    t.date     "date_fin"
    t.boolean  "annuler",          :default => false
    t.integer  "categoryEvent_id"
    t.integer  "structure_id"
    t.integer  "lieu_id"
    t.integer  "user_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "picture"
    t.datetime "heure_debut"
    t.datetime "heure_fin"
    t.boolean  "big_event"
  end

  add_index "events", ["categoryEvent_id"], :name => "index_events_on_categoryEvent_id"
  add_index "events", ["lieu_id"], :name => "index_events_on_lieu_id"
  add_index "events", ["structure_id"], :name => "index_events_on_structure_id"
  add_index "events", ["user_id"], :name => "index_events_on_user_id"

  create_table "galeries", :force => true do |t|
    t.string   "title"
    t.string   "picture"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lieus", :force => true do |t|
    t.string   "nomLieu"
    t.string   "NomRegion"
    t.string   "descLieu"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partenaires", :force => true do |t|
    t.string   "nomPartenaire"
    t.string   "telephone"
    t.string   "email"
    t.string   "descPartenaire"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "structure_id"
  end

  create_table "structures", :force => true do |t|
    t.string   "nomStructure"
    t.string   "adresse"
    t.string   "telephone"
    t.string   "email"
    t.text     "descStructure"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "nom"
    t.string   "prenom"
    t.date     "datenaiss"
    t.string   "adresse"
    t.boolean  "admin",                  :default => false
    t.boolean  "adminActu",              :default => false
    t.boolean  "adminEvent",             :default => false
    t.boolean  "sexe"
    t.string   "telephone"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end

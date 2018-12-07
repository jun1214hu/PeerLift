# #encoding: utf-8 

# # Your rake file:
# require 'rake/clean'

# # [] is alias for .new(), and we can chain .exclude
# CLEAN = FileList['deployment_dir/**/*']

# namespace :import do
#   desc "imports tasks data from tasks csv"
#   task :tasks => :environment do
#     require 'csv'
#     CSV.foreach('db/tasks.csv', :headers => true) do |row|
#       user_id = row[1]
#       scholarship_id = row[2] # Selectivity
#       text = row[3] # Amount
#       task_description = row[4] # Due date
      
#       UserTaskItem.create!(user_id:user_id, scholarship_id:scholarship_id,
#         text:text)
#     end
#   end
# end


# # t.integer "user_id"
# #     t.integer "scholarship_id"
# #     t.string "scholarship_name"
# #     t.string "text"
# #     t.string "status"
# #     t.string "file"
# #     t.datetime "created_at", null: false
# #     t.datetime "updated_at", null: false
# #     t.string "file_given_name"
# #     t.index ["scholarship_id"], name: "index_tasks_on_scholarship_id"
# #     t.index ["user_id"], name: "index_tasks_on_user_id"
# #   
json.extract! student, :id, :name, :gender, :birthday, :address, :created_at, :updated_at
json.url student_url(student, format: :json)
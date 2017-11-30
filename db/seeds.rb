@user = User.create(email: "test@test.com",
					password: "password",
					password_confirmation: "password",
					first_name: "Jon",
					last_name: "Snow",
					phone: "8014147309")

puts "1 User created"

AdminUser.create(email: "Admin@test.com", 
					password: "password", 
					password_confirmation: "password", 
					first_name: "Admin", 
					last_name: "Name",
					phone: "8014147309")

puts "1 Admin User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content All work and no play make Jack a dull boy.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts "3 audit logs have been created"


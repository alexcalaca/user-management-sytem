User.delete_all

puts "###"
2.times do |i|  
  user = User.create!(email: "email#{i+1}@email.com", name: "name#{i+1}", password: "default")    
  puts "User #{user.email} created.Role: #{user.roles.pluck(:name)}. Account status: #{user.account_status}"
end

puts "###"

2.times do |i|  
  user = User.create!(email: "email#{i+3}@email.com", name: "name#{i+3}", password: "default")
  user.remove_role :newuser
  user.add_role :admin  
  puts "User #{user.email} created. Role: #{user.roles.pluck(:name)}. Account status: #{user.account_status}"
end

puts "###"

2.times do |i|  
  user = User.create!(email: "email#{i+5}@email.com", name: "name#{i+5}", password: "default")
  user.remove_role :newuser
  user.add_role :hr
  puts "User #{user.email} created. Role: #{user.roles.pluck(:name)}. Account status: #{user.account_status}"
end

puts "###"

2.times do |i|  
  user = User.create!(email: "email#{i+7}@email.com", name: "name#{i+7}", password: "default")    
  user.inactive!
  puts "User #{user.email} created. Role: #{user.roles.pluck(:name)}. Account status: #{user.account_status}"
end
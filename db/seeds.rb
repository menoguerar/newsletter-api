require 'faker'
# 5.times do |i|
#     User.create([{
#         name: Faker::Name.name ,
#         email: Faker::Internet.email
#     }])

#     Topic.create([{
#         name: Faker::Book.genre 
#     }])

    


# end

5.times do |i|
    UserTopic.create([{
        user_id:Faker::Number.between(1, 5), 
        topic_id:Faker::Number.between(1, 5)
    }]) 

end


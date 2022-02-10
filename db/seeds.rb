require 'faker'

#####################################################
    ### back_to_0 ###   
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
Stroll.destroy_all

#####################################################
    ### 50_creation_for_each_model ###
    
    50.times do
        city = City.create(city_name: Faker::Address.city)
        dogsitter = Dogsitter.create(name: Faker::Name.first_name, city_id: City.all.sample.id)
        dog = Dog.create(name: Faker::Name.name, city_id: City.all.sample.id)
        stroll = Stroll.create(date: Faker::Date.forward, dogsitter_id: Dogsitter.all.sample.id, dog_id: Dog.all.sample.id, city_id: City.all.sample.id)
    end 
       
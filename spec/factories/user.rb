FactoryBot.define do
    factory :user do
      # Ensure unique `name` by appending `_n`
      sequence(:name) { |n| "#{Faker::Name.first_name.downcase}_#{n}" }
      
      # Ensure unique `email` by appending `_n`
      sequence(:email) { |n| "#{Faker::Internet.email(name: "user_#{n}")}" }
      
      password { 'password' }
      
      # Ensure unique `full_name` by combining with `_n`
      sequence(:full_name) { |n| "#{Faker::Name.name} #{Faker::Name.last_name} #{n}".downcase }
      
      # Associate role and institution factories
      association :role
      association :institution
    end
  end
  
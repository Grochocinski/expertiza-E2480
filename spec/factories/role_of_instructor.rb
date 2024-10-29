FactoryBot.define do
    if ActiveRecord::Base.connection.table_exists?(:roles)
        factory :role_of_instructor, class: Role do
        name { 'Instructor' }
        parent_id { nil }
        end
    end
end
FactoryBot.define do
    factory :instructor, class: Instructor do
        name {'instructor6'}
        role {Role.where(name: 'Instructor').first || association(:role_of_instructor)}
        fullname {'6, instructor'}
        parent_id {1}
        email {'instructor6@gmail.com'}
    end
end
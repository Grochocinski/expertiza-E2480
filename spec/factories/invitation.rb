FactoryBot.define do
    factory :invitation do
        from_user factory: :user
        to_user factory: :user
        assignment factory: :assignment
        reply_status { 'W' }
    end
end
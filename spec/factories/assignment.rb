FactoryBot.define do
    factory :assignment do
        name { (Assignment.last ? "assignment#{Assignment.last.id + 1}" : 'final2').to_s }
    end
end
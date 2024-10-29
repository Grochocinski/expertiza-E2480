FactoryBot.define do
    factory :course, class: Course do
        sequence(:name) { |n| "CSC517, test#{n}" }
        instructor { Instructor.first || association(:instructor) }
        directory_path {'csc517/test'}
        info {'Object-Oriented Languages and Systems'}
        private {true}
        institution { Institution.first || association(:institution) }
    end
end
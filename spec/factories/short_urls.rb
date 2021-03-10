FactoryBot.define do
  factory :short_url do
    short { "MyString" }
    long { "MyString" }
    visits_count { 1 }
  end
end

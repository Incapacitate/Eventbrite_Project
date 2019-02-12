FactoryBot.define do
  factory :event do
    start_date { "2019-02-12 21:25:39" }
    duration { 1 }
    title { "MyString" }
    description { "MyText" }
    price { 1 }
    location { "MyString" }
  end
end

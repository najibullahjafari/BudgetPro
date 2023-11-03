FactoryBot.define do
  factory :category do
    name { "Sample Category" }
    icon { "fa-icon-name" }
    user
  end
end

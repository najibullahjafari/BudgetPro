FactoryBot.define do
  factory :transaction do
    name { 'Sample Transaction' }
    amount { 100.00 }
    user
    category
  end
end

FactoryBot.define do
  factory :favorite do
    user { User.first }
  end
end
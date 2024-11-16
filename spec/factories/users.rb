FactoryBot.define do
  factory :user do
      name { 'Doctor' }
      email { 'doctorwho@notarealemail.com' }
      password { 'password' }
      encrypted_password { 'password' }
  end
end
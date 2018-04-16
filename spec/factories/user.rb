# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name     { Faker::Name.name }
    username { Faker::Internet.user_name name }
    email    { Faker::Internet.safe_email username }
  end
end

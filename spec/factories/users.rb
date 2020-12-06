FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
  end

  trait :with_profile do
    after :build do |user|
#以下はuserのインスタンスが作成された後の処理です
      build(:profile, user: user)
    end
  end
end
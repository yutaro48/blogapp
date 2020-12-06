FactoryBot.define do
  factory :profile do
    nickname { Faker::Name.name }
    introduction { Faker::Lorem.characters(number: 100) }
    gender { Profile.genders.keys.sample }
#sampleは配列の中から適当に一つの値を取り出すメソッド
    birthday { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
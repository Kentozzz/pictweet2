FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)} #FactoryBotでランダムな名前を2桁で作成
    email                 {Faker::Internet.free_email} #FactoryBotでランダムなメールアドレスを作成
    password              {Faker::Internet.password(min_length: 6)} #FactoryBotでランダムなパスワードを最低６文字で作成
    password_confirmation {password} #パスワードを確認してくれる
  end
end
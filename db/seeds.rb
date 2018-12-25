# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

fesus = []
fesus << Fesu.create!(title: "サマソニ", place: "千葉 幕張 海浜幕張",photo: "/img/fesu/sonic.jpg", category: "音楽フェス", date: "2018/11/15", latitude: "35.649801" ,longitude:"140.036356")
fesus << Fesu.create!(title: "フジロック", place: "新潟 苗場", photo: "/img/fesu/fujirock.jpg", category: "音楽フェス", date: "2018/10/27" ,latitude: "36.788003" ,longitude:"138.767146")
fesus << Fesu.create!(title: "隅田川花火大会", place: "東京 隅田川", photo: "/img/fesu/sumidagawa.jpg", category: "お祭り", date: "2018/11/02",latitude: "35.715777" ,longitude:"139.808104")
fesus << Fesu.create!(title: "代々木公園肉フェスティバル", place: "東京 代々木 渋谷 原宿", photo: "/img/fesu/yoyoginikufes.jpg", category: "肉フェス", date: "2018/11/08",latitude: "35.671736 " ,longitude:"139.694945")
fesus << Fesu.create!(title: "ニコニコ自作ゲームフェス", place: "東京", photo: "/img/fesu/niconico.jpg", category: "ゲームフェス", date: "2018/12/01",latitude: "35.649801" ,longitude:"140.036356")
fesus << Fesu.create!(title: "逗子アートフェス", place: "神奈川 湘南 逗子", photo: "/img/fesu/zushi.jpg", category: "アートフェス", date: "2018/11/30",latitude: "35.295606" ,longitude:"139.580423")
fesus << Fesu.create!(title: "六本木ワインフェス", place: "東京 渋谷 六本木", photo: "/img/fesu/roppongi-wine.jpg", category: "ワインフェス", date: "2018/09/01",latitude: "35.664122" ,longitude:"139.729426")
fesus << Fesu.create!(title: "シブヤファッションフェス", place: "東京 渋谷", photo: "/img/fesu/shibuyafashionfestival.png", category: "ファッションフェス", date: "2018/11/20",latitude: "35.661777" ,longitude:"139.704051")
fesus << Fesu.create!(title: "夜空と交差する森の映画祭", place: "栃木 もてぎリンク", photo: "/img/fesu/morinoeigasai.jpg", category: "映画フェス", date: "2018/10/01",latitude: "36.531954" ,longitude:"140.225397")

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content, fesu: fesus.sample) }
end
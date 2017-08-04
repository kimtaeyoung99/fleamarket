# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "최고 관리자",univ: "Flea Market", email: "flea@flea.com" , password: "123123")

for i in 2..5
    User.create(
        name: "user#{i}",
        univ: "강남대학교",
        email: "user#{i}@sample.com",
        password: "123123"
    )
end

for i in 6..10
    User.create(
        name: "user#{i}",
        univ: "명지대학교",
        email: "user#{i}@sample.com",
        password: "123123"
    )
end

Question.create(title: "<필독> Q & A 공지사항입니다.", content: "1.운영진 권한은 어떻게 얻나요?? --- 
                                                                A.학교 관계자 분들이라면 연락을 주세요!! 권한을 드립니다.
                                                        " ,
                user_id: 1)
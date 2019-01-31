
100.times do |number|
  woman = Woman.new(uid: "1",provider: "facebook",name: "aragaki",image: File.open("./app/assets/images/aragaki.jpg"),age: "31",introduction: "My job is actoress",residence: "Tokyo",email: "aragaki#{number}@gmail.com",password: Devise.friendly_token[0, 20])
  p woman.save!
end

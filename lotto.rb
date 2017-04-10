require ('open-uri')
require ('json')

my_numbers = Array(1..45).sample(6).sort
puts("")
print("추첨한 로또 번호는 "+my_numbers.to_s+" 입니다.")
puts("")
#로또 페이지를 가져온다
page=open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=')
#페이지에 있는 값을 읽어서 가져와야함

lotto_info=page.read
lotto_hash = JSON.parse(lotto_info)

pets = {
"drwtNo3"=>13, "drwtNo2"=>10, "drwtNo1"=>3, "drwtNo6"=>32, 
"drwtNo5"=>31, "drwtNo4"=>22
    
}
hitnumber = []
puts "이번주 추첨번호는"
pets.each do |k,v|
     puts v
end
drw_numbers=[13,10,3,32,31,22]

my_numbers.each do |item|
    if(drw_numbers.count(item)==1)
        hitnumber.push(item)
    end
end
print("겹치는 번호는 ",hitnumber," 입니다")

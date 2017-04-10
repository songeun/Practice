lotto=(1..45).to_a.sample(6).sort!

lotto.each do |mandoo|
    puts mandoo
end


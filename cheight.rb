#Hackerrank Challenge 8

n = gets.to_i
i = 0
s = {}
while i < n
    str1, str2 = gets.split.map(&:to_s)
    s["#{str1}"] = "#{str2}"
    i+=1
end
p s
i = 0
while line = gets
    if s["#{line}"] != nil
        puts "#{line}=#{s[line]}"
    else
        puts "Not found"
    end

end

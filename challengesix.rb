#Hackerrank Challenge 6
numcases = gets.to_i
i = 0
str = Array.new
while i < numcases
    str[i] = gets.strip
    i+=1
end
i = 0
while i < str.length
    temp = str[i]
    j = 0
    even = ""
    odd = ""
    while j < temp.length
        even = even + temp[j] if j%2 == 0
        odd = odd + temp[j] if j%2 != 0
        j+=1
    end
    puts "#{even} #{odd}"
    i+=1
end

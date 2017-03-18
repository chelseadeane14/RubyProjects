puts "It has been a great day."
puts "Unfortunately, it's already #{Time.now}"

# Defining a Method
def say_hi(user_name)
  result = "Hi, #{user_name.capitalize}!" #Capitalize is a method
  return result
end # end terminates code blocks

#Personalized Greeting
puts say_hi('mark')
puts say_hi("Mary")

puts "Testing the \nnewline character"


# Hashes and Arrays
x = [4,'aligator', 9.99]
puts "The third element of the array is #{x[2]}"

x[0] = 6
puts "The elements of the array are #{x.inspect}"

x = ['knight', 'bishop', 'king', 'queen', 'pawn']
puts x[2]
puts x[4]

x = %w{knight bishop king queen pawn}
puts x[2]
puts x[4]

songs_artists = {
  :'If You Could See Me Now' => 'The Script',
  :'Night Changes'=> 'One Direction',
  :'Love Yourself' => 'Justin Bieber'
}

p songs_artists[:'Night Changes']
p songs_artists[:'If You Could See Me Now']
p songs_artists[:'Love Yourself']
p songs_artists[:'Like a Virgin']

# Control Structures
timer = 4
tries = 0
if timer > 5
  puts "You won!"
elsif tries == 0
  puts "You lost!"
else
  puts "Please enter any number"
end

temperature = 101
puts "It is extremely hot" if temperature > 100

i = 5
sample = 0
while sample <= i
  puts ("Sample = #{sample}")
  sample = sample + 1
end

def sample_block
  puts "The starting point"
  yield
  yield
  puts "The endpoint"
end
sample_block {puts "The midpoint"}
#sample_block {puts "The second midpoint"}

# Example of a class
class Book_In_Stock
  def initialize(isbn, amount)
    @isbn = isbn
    @amount = Float(amount)
  end
  def isbn
    @isbn
  end
  def amount
    @amount
  end
end

first_book = Book_In_Stock.new("1234", 20.00)
second_book = Book_In_Stock.new("5678", 15.00)
puts "ISBN of first_book = #{first_book.isbn}"
puts "Price of first_book = #{first_book.amount}"
puts "New price of first_book = #{first_book.amount*0.50}"

# More Arrays
x = [44, "basketball", 99.99]
puts x.class
puts x.length
puts x[0]
puts x[1]

y = Array.new
puts y.class
puts y.length
y[0] = "sample"
y[1] = "array"
y[2] = "testing"
y[3] = "pairs"
#puts y
puts y[-1]
puts y[1,2]
puts y[2,1]

x = {pen:'writer', camera: 'photographer', brush: 'painter'}
p x[:pen]

sample_array = [1,2,3,4,5]
second_array = [6,7,8,9,0]
sample_array.each {|sample_value| puts sample_value*5}
sum = 1
second_array.each do |sample_value|
  sum+=sample_value
  puts sum
end

def repeat_twice
  yield
  yield
end
repeat_twice {puts "I'm awesome"}

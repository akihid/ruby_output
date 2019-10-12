def fizz_buzz(n)
  if n % 15 == 0
    p 'fizzbuzz'
  elsif n % 5 == 0
    p 'buzz'
  elsif n % 3 == 0
    p 'fizz'
  else 
    p n.to_s
  end
end

# for i in 1..100 do
#   fizz_buzz(i)
# end
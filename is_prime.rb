def is_prime?(n)
  2.upto(n-1) do |x|
    if n % x == 0
      return false
    end
    break
  end
  true
end

p is_prime?(12)

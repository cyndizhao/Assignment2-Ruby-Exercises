def city_counter(hash)
  hash.map do |x, y|
    if y == [] or y == nil
      break
    elsif y.length > 1
      city = "cities"
    else
      city = "city"
    end
    print "#{x} has #{y.length} main #{city}: "

    if y.length == 1
      puts "#{y[0]}"
    else
      puts "#{y[0..-2].join(", ")} and #{y[-1]}"
    end
  end
end

major_cities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"], QC:["Montreal"]}
city_counter(major_cities)

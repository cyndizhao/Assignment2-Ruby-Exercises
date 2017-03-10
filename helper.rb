module HelperMethods
  def titleize(string)
    words = string.split(" ").map do |x|
      if x !="in" and x!= "the" and x != "of" and x!= "or" and x!= "from"
        x.capitalize
      else
        x
      end
    end
    words.join(" ")
  end
end


class ClassIncludes
  include HelperMethods
end

class ClassExtends
  extend HelperMethods
end

string = "hello the wonderful world"
puts "Include"
p ClassIncludes.new.titleize(string)       #instance method in the target class
puts "Extend"
p ClassExtends.titleize(string)           #class method in the target class

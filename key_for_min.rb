# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# This gives a hash, with a few keys and values "ikea" and somehow we need to find or define the smallest value, and we have to return the key for that value. So if the smallest value in this instance is 25, we want to return chair. Keep in mind that when you're coding, the provided values arent the focal point, its about creating code that can be applied to any similar set of values and still give you the results. Also keep in mind that iterating over a hash always iterates over key value pairs, not just the value. Normally we could use much easier methods to do this (the ones they tell us not to use)
ikea = {:chair => 25, :table => 85, :mattress => 450}

def key_for_min_value(hash)
  # Next we just want to keep track of a variable "min_value", and if the next value is smaller, you update min_value to that value. That value will also present its key which you'll return.
  #Without thinking about the numbers that youre given; if you have a variable that points to the lowest value of something, thats what it should represent, right? So as you iterate, the  or (||) boolean returns if one of the statements is true. which also means that if value is greater than min_value, and min_value isnt 0 then we havent found it. (Actual statement) However if  value is less than min value then it is the new min_value, and if min_value is == 0 that must mean that value is also = to zero making it the min value anyway.
  min_value = 0
  min_key = nil
  hash.each do |key, value|  
   if value  < min_value || min_value == 0
     min_value = value
     min_key = key
    # We set a varibale for min key to equal key becaus that will be returned from the iteration alongside the minimum value. and we're looking for the key as an answer, not the value 
   end 
  end 
min_key
end

key_for_min_value(ikea)

# Basically set a value that you keep track of as you iterate,


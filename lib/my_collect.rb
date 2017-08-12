require 'pry'

def my_collect(list)
  i = 0
  collection = []
  while i < list.length
    collection << yield(list[i])
    i += 1
  end
  collection
end

my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) do |name|
  # binding.pry
  name.split(" ").first
end

my_collect(["ruby", "javascript", "python"]) do |language|
  # binding.pry
  language.upcase
end

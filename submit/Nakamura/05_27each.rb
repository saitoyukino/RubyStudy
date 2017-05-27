# each
names = ["test1","test2","test3"]
names.each do |name|
  puts name
end

i = 0
name.each do |name|
  i += 1
  redo if i == 2
  p [i,name]
end
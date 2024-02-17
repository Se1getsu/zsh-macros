Dir.glob "*.pl" do |item|
    name = item[0, item.size - ".pl".size]
    puts "alias #{name}=\"perl #{__dir__}/#{item}\""
end

Dir.glob "*.rb" do |item|
    name = item[0, item.size - ".rb".size]
    name == "a" && next
    puts "alias #{name}=\"ruby #{__dir__}/#{item}\""
end

system "chmod 755 *.pl"

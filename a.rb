Dir.glob "*.pl" do |item|
    name = item[0, item.size - ".pl".size]
    puts "alias #{name}=\"perl #{__dir__}/#{item}\""
end

system "chmod 755 *.pl"
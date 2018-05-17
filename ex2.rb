
accounts = Hash.new
accounts["maxValue"] = 1000


def addClient(hash, name, value)
    if value < hash["maxValue"]
        hash["name"]
    else
        puts 'za duza kwota'
    end
end

addClient(ARGV[0], ARGV[1])

accounts.each do |key, value|
    puts "#{key}:#{value}"
end
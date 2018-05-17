
accounts = Hash.new
accounts["maxValue".to_sym] = 1000
$maxGet = 500

def addClient(hash, name, value)
    if value.to_i < hash[:maxValue]
        hash[name.to_sym] = value
    else
        puts 'za duza kwota'
    end
end

def writeAll (hash)
    hash.each do |key, value|
        if key.to_sym != :maxValue 
            puts "#{key}: #{value}"
        end
    end
end

def isClient(hash, name)
    hash.has_key? name.to_sym
end

def writeClient(hash, name)
    if isClient(hash,name)
    puts name + ": #{hash[name.to_sym]}"
    else
        puts 'nie istnieje taki klient'
    end
end

def addMoney(hash, name, value)
    if isClient(hash, name)
        v1 = hash[name.to_sym].to_i
        v2 = value.to_i
        accV = v1 + v2
        if accV > hash[:maxValue]
            puts 'przekoroczyles mozliwa kwote'
        else
            hash[name.to_sym] = accV
        end
    else    
        addClient(hash,name,value)
    end
end

def getMoney (hash, name, value)
    if value.to_i > $maxGet
        puts 'nie mozesz wyplacic tak duzej kowty'
    else
        if isClient(hash, name)
            v1 = value.to_i
            v2 = hash[name.to_sym].to_i
            accV = v2-v1
            if accV < 0
                puts 'nie wystarczajaca ilsoc srodkow'
            else
                hash[name.to_sym]=accV
            end
        else
            puts 'nie ma takiego klienta'
        end
    end
end


def writeAcc(name)
    
end




addClient(accounts, ARGV[0], ARGV[1])
addClient(accounts, ARGV[2], ARGV[3])

writeAll(accounts)
puts "\n"

addMoney(accounts, ARGV[4], ARGV[5])
getMoney(accounts, ARGV[6], ARGV[7])

writeAll(accounts)
puts "\n"

first = ARGV[8][0].chr
    if first == '-'
    writeAll(accounts)
    else
    writeClient(accounts, ARGV[8])
    end

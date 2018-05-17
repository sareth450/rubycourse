count =0;

def module_split(path, separator = " ");
    modules = path.split(separator)
    modules.select { |num| (num.to_i % 2).zero? }.count
end



files = ARGV.map { |file_name| File.open(file_name).each { |line| count+=module_split(line)}}
puts count
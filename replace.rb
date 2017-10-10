# responseを1個１個書いていくのが面倒だったのでscript書いてみた(未完成)
# usecase ruby replace.rb anime_json
file_name = ARGV[0]
File.open(file_name) do |file|
	file.each_line do |line|
		words = line.split(":")
		variable = words[0].gsub('"', "")
		type = words[1].kind_of?(Integer) ? "Int" : "String"
		puts "private val " + variable + ": " + type + ","
	end
end

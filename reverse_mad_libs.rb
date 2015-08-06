nouns = File.open('nouns.txt', 'r') do |f|
  f.read
end

verbs = File.open('verbs.txt', 'r') do |f|
	f.read
end

adjectives = File.open('adjectives.txt', 'r') do |f|
	f.read
end

dictionary = {
	nouns: nouns.split(" "),
	verbs: verbs.split(" "),
	adjectives: adjectives.split(" ")
}

def say(msg)
	puts("=> #{msg}")
end

def exit_with(msg)
	say msg
	exit
end

exit_with "No input file!" if ARGV.empty?
exit_with "File does not exist" if !File.exists?(ARGV[0])

contents = File.open(ARGV[0], 'r') do |f|
	f.read
end

contents.gsub!('NOUN').each do |noun|
	dictionary[:nouns].sample
end

contents.gsub!('VERB').each do |verb|
	dictionary[:verbs].sample
end

contents.gsub!('ADJECTIVE').each do |adjectives|
	dictionary[:adjectives].sample
end

p contents


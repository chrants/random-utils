# Returns a number >= min, but <= max
def random min, max
	rand(max - min) + min
end

# Returns a random upper or lowercase letter
def rand_let
	uppercase = random(0, 2) == 1
	uppercaseLet = random(65, 91).chr
	letter = (uppercase) ? (uppercaseLet) : (uppercaseLet.downcase) 
	letter
end

# Returns a random phone number w/ an area code of 210 (no international prefixes)
def rand_phone
	"210#{random(1111111, 9999999).to_s}"
end

# Gets a random <i>length</i> (default 36) character string consisting of uppercase and lowercase
# letters and numbers 0-9
def rand_token length=36
	token = ''
	length.times do
		token += (random(0, 2)==1) ? (random(0,10).to_s) : (rand_let())
	end
	token
end
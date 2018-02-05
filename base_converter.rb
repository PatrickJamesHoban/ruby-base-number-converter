# CODE


# FINAL REFACTORED CODE

def convert(input, source, target)
  # p decimal = convert_any_to_dec(input, source)
  convert_dec_to_any_non_dec(convert_any_to_dec(input, source), target)
end

def convert_any_to_dec(input, alphabet)
  exponent = input.length.to_i-1
  dec_str = 0
  input.each_char do |x|
    dec_str += (alphabet.index(x) * alphabet.length**exponent)
    exponent += -1
  end
  dec_str.to_s
end

def convert_dec_to_any_non_dec(input, alphabet)
  remainder = input.to_i
  bin_str = ''
  return bin_str += alphabet[remainder].to_s if remainder == 0
  until remainder <= 0
    bin_str += alphabet[remainder % alphabet.length].to_s
    remainder = remainder/alphabet.length
  end
  bin_str.reverse
end


# ORIGINAL FIRST PASS AT FUNCTIONING CODE

# # Below should work to convert anything to base 2 or binary.
# # Only tested on base ten to binary so far...
# def convert_to_binary(input)
#   remainder = input.to_i
#   bin_str = ''
#   until remainder <= 0
#     bin_str += (remainder % 2).to_s
#     remainder = remainder/2
#   end
#   bin_str.reverse
# end

# # Below works to convert binary to base 10
# def convert_to_dec(input)
#   p exponent = input.length.to_i-1
#   dec_str = 0
#   input.each_char do |x|
#     p x
#     p dec_str += (x.to_i * 2**exponent)
#     p "exponent"
#     p exponent += -1
#   end
#   dec_str.to_s
# end

# # Below works for hex, believe it will work for all to different alphabet.
# def convert_to_hex(input, alphabet)
#   remainder = input.to_i
#   bin_str = ''
#   until remainder <= 0
#     p bin_str += alphabet[remainder % alphabet.length].to_s
#     remainder = remainder/alphabet.length
#   end
#   bin_str.reverse
# end

# # Works for hex to dec, believe it should work for all to dec base 10.
# def convert_hex_to_dec(input, alphabet)
#   exponent = input.length.to_i-1
#   dec_str = 0
#   input.each_char do |x|
#     dec_str += (alphabet.index(x) * alphabet.length**exponent)
#     exponent += -1
#   end
#   dec_str.to_s
# end


# DRIVER CODE

  bin      = '01'
  oct      = '01234567'
  dec      = '0123456789'
  hex      = '0123456789abcdef'
  allow    = 'abcdefghijklmnopqrstuvwxyz'
  allup    = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  alpha    = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  alphanum = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

p convert("15", dec, bin)   # should return "1111" ###YES!!!
p convert("15", dec, oct)   # should return "17"
p convert("1010", bin, dec) # should return "10"
p convert("1010", bin, hex) # should return "a"
p convert("0", dec, alpha)  # should return "a"
p convert("27", dec, allow) # should return "bb"
p convert("hello", allow, hex) # should return "320048"


# ORIGINAL DRIVER CODE FOR FIRST PASS OF FUNCTIONS

# p convert_to_binary('357') 
# p convert_to_binary('15')
# p convert_to_dec('101100101') # should return 357
# p convert_to_hex('5549', '0123456789abcdef') # should return 15AD
# p convert_hex_to_dec('15ad', '0123456789abcdef') # should return 5549
# p convert_any_to_dec('15', dec = '0123456789') # should return '15'  ###YES!!!



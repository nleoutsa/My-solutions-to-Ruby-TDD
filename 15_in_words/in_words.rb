#in_words.rb

class Fixnum


	def in_words

		word = ""

		# split the given number up into an array of string values
		# and reverse it to make the index numbers reflect the position
		# with 0 refering to the ones, 1 refering to tens, etc
		number = self.to_s.split("")

		ones = "0"
		tens = "0"
		hundreds = "0"
		


###################################################################...EACH LOOP
		number.each_with_index do |digit, index|

			position = ((number.length - index - 1) % 3)

			if position == 0 #ones
				ones = digit.to_s

word << case hundreds
						when "0" then ""
						when "1" then "one hundred"
						when "2" then "two hundred"
						when "3" then "three hundred"
						when "4" then "four hundred"
						when "5" then "five hundred"
						when "6" then "six hundred"
						when "7" then "seven hundred"
						when "8" then "eight hundred"
						when "9" then "nine hundred"
						else raise("Hundreds error with index: #{index}, digit: #{digit}")
						end

				word << " "
				
				word <<	case tens
						when "0" then ""
						when "1"
							case ones
							when "0" then "ten"
							when "1" then "eleven"
							when "2" then "twelve"
							when "3" then "thirteen"
							when "4" then "fourteen"
							when "5" then "fifteen"
							when "6" then "sixteen"
							when "7" then "seventeen"
							when "8" then "eighteen"
							when "9" then "nineteen"
							else raise("TENS/ONES error with index: #{index}, digit: #{digit}")
							end
						when "2" then "twenty"
						when "3" then "thirty"
						when "4" then "forty"
						when "5" then "fifty"
						when "6" then "sixty"
						when "7" then "seventy"
						when "8" then "eighty"
						when "9" then "ninety"
						else raise("TENS error with index: #{index}, digit: #{digit}")
						end

				word << " "

				word << case ones
						when "0"
							if number.length > 1 then ""
							else "zero"
							end
						when "1" then "one"
						when "2" then "two"
						when "3" then "three"
						when "4" then "four"
						when "5" then "five"
						when "6" then "six"
						when "7" then "seven"
						when "8" then "eight"
						when "9" then "nine"
						else raise("ONES error with index: #{index}, digit: #{digit}")
						end unless tens == "1"

				word << " "

				# insert words denoting number of thousands
				word << case ((number.length - index - 1) / 3)
						when 0 then ""
						when 1 then "thousand"
						when 2 then "million"
						when 3 then "billion"
						when 4 then "trillion"
						else raise("MAGNITUDE NOT SUPPORTED")
						end unless ones == "0" && tens == "0" && hundreds == "0"

				word << " "

			elsif position == 1 #tens
				tens = digit.to_s
			elsif position == 2 #hundreds
				hundreds = digit.to_s

			else raise("POSITIONS error: position= #{position}")
			end

		end
		##################################################### end EACH LOOP

				

				
			
		word.squeeze(" ").strip
	end

end

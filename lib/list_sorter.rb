class List_Sorter

	def order_list (unsorted_list, ascii: false, reverse: false)
		if ascii
			sorted_array = from_textarea_to_array(unsorted_list).sort
		else
			sorted_array = from_textarea_to_array(unsorted_list).sort_by { |word|
				word.downcase
			}
		end

		sorted_array.reverse! if reverse		
		
		from_array_to_textarea(sorted_array)
	end

	def from_textarea_to_array(textarea)
		remove_newlines(textarea.split("\n"))
	end

	def from_array_to_textarea(array)
		array.join("\n")
	end

	def remove_newlines(array)
		array.select { |entry|
			entry unless entry =~ /^\s*$/
		}
	end

end
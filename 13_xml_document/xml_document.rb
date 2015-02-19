# xml_document.rb

class XmlDocument
	
	def initialize(indented = false)
		@indented = indented
		@indent_level = -1
	end

	def method_missing(sym, *args, &block)
		@indent_level += 1 if sym
		indent =  "  " * @indent_level

		output = ""
		output << indent if @indented
		output << "<#{sym.to_s}"
		output << " " << args[0].keys[0].to_s << "='#{args[0].values[0]}'" if args.length > 0
		
		output << ">" if block
		output << "\n" if block && @indented
		output << "#{yield}" if block
		output << indent if block && @indented
		output << "</#{sym.to_s}>" if block
		output << "/>" unless block
		output << "\n" if @indented

		output

	end
end


xml = XmlDocument.new(true)

puts xml.hello {xml.goodbye {xml.come_back {xml.ok_fine(:be => "that_way")}}}

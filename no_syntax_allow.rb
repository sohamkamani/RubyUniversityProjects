
def allow_to_receive(object, method_name, replacement)
	method_to_be_replaced = object.method(method_name)

	method_to_be_replaced = define_method do |args|
		return replacement
	end
end


sample = "rrrrr"

allow_to_receive(sample, :length, 3)

puts sample.length
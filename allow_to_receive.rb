def method1(c)
	def method2(a,b)
		puts a 
		puts b
	end
end

method1('www').method2 'a','d'


def allow(some_object)
	def to(method_name, block)
		eval("def #{some_object}.#{method_name} do #{block}")
		end
	end


def receive(method)

end


an_object = "smaple"
method = :length
return_string = "sample"


allow(an_object).to receive(method),{} 
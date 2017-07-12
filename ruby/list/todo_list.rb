class TodoList

	def initialize(list)
		@list = ["do the dishes", "mow the lawn"]
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << "mop"
	end

	def delete_item(item)
		@list.delete("do the dishes")
		@list
	end

	def get_item(index)
		@list[index]
	end

	def get_item(item)
		item = @list[0]
	end
end




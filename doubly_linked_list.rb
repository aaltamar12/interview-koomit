
@nodes = []


def insert_head(data)
  prev = nil
  next_node = nil
  @nodes << {prev:, data:, next_node: }
end


def insert_tail(data)
  # Insert Head if not have nodes
  if @nodes.size == 0
    return insert_head(data) 
  end
  
  # Insert Tail if have nodes
  last_node = @nodes.last

  # Create new node
  new_node = {prev: last_node[:data], data:, next_node: nil}

  # Reference next
  last_node[:next_node] = new_node[:data] 

  @nodes.append(new_node)
end


def remove_element(data)
  delete_node = search_element(data).first
  puts "delete node #{delete_node}"
  prev_node = search_element(delete_node[:prev]).first
  next_node = search_element(delete_node[:next_node]).first

  prev_node[:next_node] = next_node[:data]
  next_node[:prev] =  prev_node[:data]
  new_nodes = @nodes.reject{|node| delete_node === node}
  @nodes = new_nodes
end

def remove_duplicates(data)
  nodes = search_element(data)
  first_node = nodes.first 
  clean_nodes =  nodes.filter{|node| node if node != first_node}
  
  new_nodes = @nodes.reject { |node| clean_nodes.include?(node) }
 
  @nodes = new_nodes
end

def search_element(data)
  @nodes.filter{|node| node[:data] ==  data }
end


insert_tail(10)
insert_tail(20)
insert_tail(30)
insert_tail(10)
insert_tail(15)
insert_tail(20)
insert_tail(20)

remove_duplicates(10)
remove_duplicates(20)
#search_element(20)
remove_element(20)
puts @nodes



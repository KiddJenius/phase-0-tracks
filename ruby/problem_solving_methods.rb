
def search_array(arr=[], num)
  index = 0
  arr.length.times do
    if arr[index]==num
      return index
    else index += 1
    end
  end
  return nil
end
arr= [3, 55, 36, 7, 14]
p search_array(arr, 14)
p search_array(arr, 101)
      
def fib(number)
  fib_array =[0,1]
  index_num = 2
  (number-2).times do
    fib_array<<(fib_array[index_num-1] + fib_array[index_num-2])
    index_num += 1 
  end
  return fib_array
end
p fib(100)
p fib(100)[99] == 218922995834555169026


#Lock first number at index [0]
#move to (next number)
#compare all previous numbers left to right until (compared number) > (next number)
#shift (compared number) one index right
#insert (next number)



def insert_sort(start_arr=[])
  index = 1
  (start_arr.length-1).times do 
    current = start_arr[index]
    sub_arr_index = index - 1 
    while sub_arr_index >= 0 && start_arr[sub_arr_index]>current do
      start_arr[index] == start_arr[sub_arr_index]
      sub_arr_index += 1 
    end
    index +=1
  end
  return start_arr
end

test_list=[2, 6, 212, 44, 36, 1057, 64]
p insert_sort(test_list)

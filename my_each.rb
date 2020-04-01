def my_each(array)  # put argument(s) her
  i = 0
  while i < array.length
    yield array[i]
    i = i + 1
  end
    array
end

#each method accessing to the array
#look thru each one
#yield to each element it makes contact
#to grab that information
#return value

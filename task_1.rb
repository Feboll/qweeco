def print_sum(array)
	print "#{array[0]}"
	i = 1
	while array[i]!=0 && array[i]!=nil  do
		print " + #{array[i]}"
		i = i + 1
	end
	puts
end 
print "Введите число - "
number = gets.to_i
arr = []
arr[0] = number
for i in 1..number do
	arr[i] = 0
end
print_sum(arr)
j = 1
t = number-1
while (j != number-1) do

#	if arr[0] == 1 && t == number-1
#		arr[0] = number
#		for i in 1..number do
#			arr[i] = 0
#		end
#		j = 1
#		t = j 
#	end

	min = 0
	max = 0

	if arr[j]+1>arr[0]-1
		j += 1
	end
	
	for i in 1..t do
		if arr[min]>arr[i]
			min = i
		end
		if arr[max] <= arr[i]
			max = i
		end
	end

	arr[max] -= 1
	arr[min] += 1
	print_sum(arr)
	

end

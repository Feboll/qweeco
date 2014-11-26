def print_sum(array)
	print "#{array[0]}"
	for i in 1..array.size-1 do
		print " + #{array[i]}"
	end
	puts
end 

=begin
def summa(b_array, c, jast_sum)
	jast_sum = 0
	for i in 0..b_array.size-1 do
		jast_sum += b_array[i]
	end
	jast_sum+=c
	return jast_sum
end
=end


print "Введите число - "
number = gets.to_i
a = []
for i in 0..number-1 do
	a[i] = 1
end
print_sum(a)
j = 0
t = 1
while a[0]!=number do
	if j>=a.size-1
		j=t
		a[t-1] += 1
		for i in j..number-a[0] do
			a[i] = 1
		end
	else
		a[j] += 1
		a.delete_at(a.size-1)
		if a[j-1]<=a[j]
			j += 1
		end
		
	end
	if a[0]==number
		a.delete_at(a.size-1)
	end
	print_sum(a)
end


=begin

for i in 0..number-1 do
	a[i] = number-i
end
print_sum(a)
i=0
d=0
j=0
sum = 0
while 1 do
	b = []
	b[0] = a[i]
	t = 0
	while j<a.size-1 do
		sum = summa(b,a[i],sum)
		if sum<number
			t +=1
			b[t]=a[j]
		elsif sum == number
			t+=1
			b[t]=a[j]
			d=j
			break
		else
			#puts "Вот так вот"
			j+=1			
		end
		print_sum(b)
	end

	print_sum(b)
	if t==a.size-1
		break
	end
	if j== a.size-1
		i+=1
		j=i
	else
		j = d+1
	end
end
=end


=begin
j = 1
i = 0
if number%2>0
	number+=1	
end
while arr[0]!=1 do
	if arr[0]>number/2
		arr[i] -= 1
		arr[j] += 1
		print_sum(arr)
		if arr[j]>1
			i += 1
			j += 1 
		else
			i = 0
			j = 1
			arr[i] -= 1
			arr[j] = number - arr[i] - 1
			print_sum(arr)
		end
	else
		arr[0] -= 1
		arr[j] += 1
		print_sum(arr)
		#break
	end
	
	
end
=end

=begin
j = 1
t = number-1
while (j != number-1) do
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
=end

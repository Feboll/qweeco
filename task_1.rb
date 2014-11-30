def print_sum(array)
	print "#{array[0]}"
	for i in 1..array.size-1 do
		print " + #{array[i]}"
	end
	puts
end 

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
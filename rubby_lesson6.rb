=begin
# zad.1.
   puts "\nzad.1"
puts("Dzisiejsza data to 7.11.2018")

days= (30-7) +31;
puts("Days: #{days}")
weeks = days/7
puts("Weeks: #{weeks}")


sec= (365-days)*24*60*60

puts("Seconds: #{sec}s")

# zad.2.
   puts "\nzad.2"
km= $stdin.gets.to_f
mile= 0.62137*km
puts("Podana liczba kilometrów wynosi: #{km} nastomiast w milach #{mile}")

# zad.3.
   puts "\nzad.3"
number1= $stdin.gets.to_f
number2= $stdin.gets.to_f
average = (number1+number2)/2
puts("Dla podanych liczb #{number1} oraz #{number2} ich średnia wynosi #{average}")

# zad.4.
   puts "\nzad.4"
Ax= $stdin.gets.to_f
Ay= $stdin.gets.to_f
A = Math.sqrt((Ax**2)+(Ay**2))

puts("Dla podanych współrzędnych Ax #{Ax} oraz Ay#{Ay} ich odległość od punktu [0,0] wynosi #{A}")


=end


=begin
# zad.5.
   puts "\nzad.5"
a= $stdin.gets.to_f
c= $stdin.gets.to_f
h=$stdin.gets.to_f


delta= (c**2)-4*a*h

if delta > 0 
   puts "delta is greater than 0"
   t1= (-c-Math.sqrt(delta))/(2*a)
   t2= (-c+Math.sqrt(delta))/(2*a)
   puts "delta = #{delta} t1 = #{t1} t2= #{t2}"
   
   if t1<0
       puts "t1= #{t1} nie ma rozwiazania"
   else
       x1= Math.sqrt(t1)
       x2= -Math.sqrt(t1)
       puts "x1= #{x1} lub x2=#{x2}"
   end
   

    if t2<0
       puts "t2= #{t2} nie ma rozwiazania"
   else
       x3= Math.sqrt(t2)
       x4= -Math.sqrt(t2)
       puts "x3= #{x3} lub x4=#{x4}"
   end
   

elsif delta < 0
   puts "delta is lower than 0"
else
   puts "Delta equals 0"
   t= (-c)/(2*a)
   puts "t = #{t}"
      if t<0
       puts "t= #{t} nie ma rozwiazania"
   else
       x1= Math.sqrt(t)
       x2= -Math.sqrt(t)
       puts "x1= #{x1} lub x2=#{x2}"
   end
end

=end


# zad.6 dokończyć to zadanie
=begin
    t= $stdin.gets

    howManyNumbers=0;
    
    
    i = 0
    num = 4
    
    while i < num  do
        j = 0
        while j < 3 do
            puts "i=#{i} j=#{j+1}"
            if t[i]==t[j+1]
                if j+1 <=i
                    puts "bad"
                else 
                    howManyNumbers=howManyNumbers+1
                    puts howManyNumbers
                end
            else
            end
        j=j+1
        end 
    i=i+1
    end
    
    puts "Jest #{howManyNumbers} identycznych cyfr"
    if howManyNumbers>=1
        puts "Tak są conajmniej dwie identyczne cyfry"
    else 
        puts "Nie ma conajmniej dwóch identycznych cyfr"
    end
=end


=begin
# zad.7

    palindrom= $stdin.gets
    
    i = 0
    num = 2
    isPalindrom=true
    
    while i < num  do
        if palindrom[i] == palindrom[3-i]
            #puts "OK"
        else
            isPalindrom=false
            #puts "Nie jest palindromem"
            break
        end
    i=i+1
    end
    
    if isPalindrom
        puts "#{palindrom} jest palindromem"
    else
        puts "#{palindrom} Nie jest palindromem"
    end
=end


# zad.8

=begin
digits = $stdin.gets.to_i
result=""
divider=10

for num in (1..5)

    result = result+ (digits % divider).to_s
    digits= (digits / divider)

end
puts "Wynik to: #{result}"
    
=end   


# zad.9
=begin
firstNumber = $stdin.gets.to_i
secondNumber = $stdin.gets.to_i
thirdNumber = $stdin.gets.to_i

howManyNumbersAreSame= 0

if firstNumber==secondNumber
    howManyNumbersAreSame = howManyNumbersAreSame+1
end
if firstNumber==thirdNumber
    howManyNumbersAreSame = howManyNumbersAreSame+1
end
if secondNumber==thirdNumber
    howManyNumbersAreSame = howManyNumbersAreSame+1
end

if (howManyNumbersAreSame>=1)
    puts "Istnieją conajmniej dwie identyczny liczby"
end  
=end


#zad 1 - trzecia kartka
=begin
digits = $stdin.gets

sum1=0
sum2=0
for num in (0..2)
    sum1= sum1+ digits[num].to_i
    sum2= sum2+digits[num+3].to_i
end


puts "Sum1 #{sum1}"
puts "Sum2 #{sum2}"

if sum1==sum2
    puts "Jest to szczesliwa liczba"
else
    puts "Nie jest to szczesliwa liczba"
end

=end

#zad 2 - trzecia kartka

=begin
digits = $stdin.gets

isIncreasingSequence = true

for num in (0..1)
    if digits[num]>=digits[num+1]
        isIncreasingSequence=false
    end
end

puts "Czy jest ciągiem rosnącym: #{isIncreasingSequence}"

=end

#zad 3 - trzecia kartka

=begin
digits = $stdin.gets

isIncreasingSequence = true

for num in (0..3)
    if ((num % 2) != 0)
        puts "Liczba #{digits[num]} o indeksie #{num} jest parzysta "
    else
        puts "Liczba #{digits[num]} o indeksie #{num} nie jest parzysta "
        if digits[num].to_i >= digits[num+2].to_i
            isIncreasingSequence=false
        end
    end
    
end

puts "Czy jest ciągiem rosnącym: #{isIncreasingSequence}"

=end

#zad 4 - trzecia kartka 
=begin
coordinates1 = $stdin.gets
coordinates2 = $stdin.gets

#letter is even for B D F H
isLetterEvenForFirstCoornidates= false
isLetterEvenForSecondCoornidates = false

if ((coordinates1[0].eql? "B") | (coordinates1[0].eql? "D")  | (coordinates1[0].eql? "F")| (coordinates1[0].eql? "H"))
    isLetterEvenForFirstCoornidates= true
end

if ((coordinates2[0].eql? "B") | (coordinates2[0].eql? "D")  | (coordinates2[0].eql? "F")| (coordinates2[0].eql? "H"))
    isLetterEvenForSecondCoornidates= true
end

#puts "coordinates1 is even: #{isLetterEvenForFirstCoornidates}"
#puts "coordinates2 is even: #{isLetterEvenForSecondCoornidates}"


if (
    (isLetterEvenForFirstCoornidates & isLetterEvenForSecondCoornidates) || 
    (!isLetterEvenForFirstCoornidates & !isLetterEvenForSecondCoornidates) 
    )
    if (
        (coordinates1[1].to_i % 2 ==0) & (coordinates2[1].to_i % 2 ==0) ||
        (coordinates1[1].to_i % 2 !=0) & (coordinates2[1].to_i % 2 !=0)
        )
        puts "Są tego samego koloru"
    else
        puts "Nie są tego samego koloru"
    end
else

    if (
        (coordinates1[1].to_i % 2 ==0) & (coordinates2[1].to_i % 2 !=0) ||
        (coordinates1[1].to_i % 2 !=0) & (coordinates2[1].to_i % 2 ==0)
        )
        puts "Są tego samego koloru"
    else
        puts "Nie są tego samego koloru"
    end
end

=end

#zad.5 - trzecia kartka

=begin
coordinates1 = $stdin.gets
coordinates2 = $stdin.gets

if (coordinates1[0].eql? "A")
    coordinates1[0]="1"
elsif (coordinates1[0].eql? "B")
    coordinates1[0]="2"
elsif (coordinates1[0].eql? "C")
    coordinates1[0]="3"
elsif (coordinates1[0].eql? "D")
    coordinates1[0]="4"
elsif (coordinates1[0].eql? "E")
    coordinates1[0]="5"
elsif (coordinates1[0].eql? "F")
    coordinates1[0]="6"
elsif (coordinates1[0].eql? "G")
    coordinates1[0]="7"
elsif (coordinates1[0].eql? "H")
    coordinates1[0]="8"
end

if (coordinates2[0].eql? "A")
    coordinates2[0]="1"
elsif (coordinates2[0].eql? "B")
    coordinates2[0]="2"
elsif (coordinates2[0].eql? "C")
    coordinates2[0]="3"
elsif (coordinates2[0].eql? "D")
    coordinates2[0]="4"
elsif (coordinates2[0].eql? "E")
    coordinates2[0]="5"
elsif (coordinates2[0].eql? "F")
    coordinates2[0]="6"
elsif (coordinates2[0].eql? "G")
    coordinates2[0]="7"
elsif (coordinates2[0].eql? "H")
    coordinates2[0]="8"
end

module1 = (coordinates1[0].to_i-coordinates2[0].to_i).abs
module2 = (coordinates1[1].to_i-coordinates2[1].to_i).abs

puts "#{module1}"
puts "#{module2}"

if ((module1 ==1 && module2==2) || (module1==2 && module2==1))
    puts "Skoczek moze wykonac taki ruch"
else
    puts "Skoczek nie moze wykonac tego ruchu"
end

=end


#zad.6 - trzecia kartka

=begin
coordinates1 = $stdin.gets
coordinates2 = $stdin.gets

if (coordinates1[0].eql? "A")
    coordinates1[0]="1"
elsif (coordinates1[0].eql? "B")
    coordinates1[0]="2"
elsif (coordinates1[0].eql? "C")
    coordinates1[0]="3"
elsif (coordinates1[0].eql? "D")
    coordinates1[0]="4"
elsif (coordinates1[0].eql? "E")
    coordinates1[0]="5"
elsif (coordinates1[0].eql? "F")
    coordinates1[0]="6"
elsif (coordinates1[0].eql? "G")
    coordinates1[0]="7"
elsif (coordinates1[0].eql? "H")
    coordinates1[0]="8"
end

if (coordinates2[0].eql? "A")
    coordinates2[0]="1"
elsif (coordinates2[0].eql? "B")
    coordinates2[0]="2"
elsif (coordinates2[0].eql? "C")
    coordinates2[0]="3"
elsif (coordinates2[0].eql? "D")
    coordinates2[0]="4"
elsif (coordinates2[0].eql? "E")
    coordinates2[0]="5"
elsif (coordinates2[0].eql? "F")
    coordinates2[0]="6"
elsif (coordinates2[0].eql? "G")
    coordinates2[0]="7"
elsif (coordinates2[0].eql? "H")
    coordinates2[0]="8"
end

module1 = (coordinates1[0].to_i-coordinates2[0].to_i).abs
module2 = (coordinates1[1].to_i-coordinates2[1].to_i).abs

#puts "#{module1}"
#puts "#{module2}"

if (

    (module1 ==1 && module2==1)|| (module1==2 && module2==2)|| (module1==3 && module2==3)|| (module1==4 && module2==4)|| (module1==5 && module2==5)|| (module1==6 && module2==6) || (module1==7 && module2==7)
    )
    puts "Goniec moze wykonac taki ruch"
else
    puts "Goniec nie moze wykonac tego ruchu"
end

=end

#zad.7 - trzecia kartka

=begin
number = $stdin.gets
len = number.length-1  #wczytuje jeden znak wiecej w STDIN dlatego odejmujemy
puts "Potęga to: #{len}"
puts "Liczba to: #{number}"

sum=0
for index in (0..len-1)
    sum += (number[index].to_i) **len
end

puts sum

if (number.to_i == sum)
    puts "Jest to liczba Armstronga"
else
    puts "Nie jest to liczba Armstronga"
end

=end


#zad.1 - czwarta kartka
=begin
# Contains six different numbers.
numbers = [1, 200, 900, 300, 1000, 5]

# Sort from highest to lowest (descending).
copy=numbers.sort! {|x, y| y <=> x}

#Descending
for index in (0..numbers.count-1)
    puts copy[index]
end
=end

#zad.2


#zad.3
=begin
# Contains six different numbers.
numbers = [2, 200, 900, 300, 1000, 5]
sorted= numbers.clone
sorted.sort! {|x, y| y <=> x}

for index in (0..sorted.count-1)
    puts sorted[index]
end

min1=sorted[sorted.count-1]
min2=sorted[sorted.count-2]

index1= numbers.find_index(min1)
index2= numbers.find_index(min2)

puts "Indeksy te to: index1=#{index1} oraz index2=#{index2}"

=end

#zad.4
=begin
tab1 = [2, 200, 900, 300, 1000, 5]
tab2 = [2, 300, 8, 90, 1000, 4]

sameNumbers=0

for i in (0..tab1.count-1)
    for j in (0..tab2.count-1)
        if (tab1[i] == tab2[j])
            sameNumbers=sameNumbers+1
        end
    end
end

puts "Ilosc pokrywających się wartosci to: #{sameNumbers}"
=end



#zad.5
=begin
tab1 = [2, 200, 899, 300, 1000, 5]
tab2 = [2, 200, 300, 900, 1000, 5]


for i in (0..tab1.count-1)
hasSameValueInOtherTable= false
    for j in (0..tab2.count-1)
        if (tab1[i] == tab2[j])
            hasSameValueInOtherTable=true
        end
    end
    if (!hasSameValueInOtherTable)
        puts "Liczba ta w tabeli 1 to = #{tab1[i]}"
    end
end

=end


#zad.6
=begin
tab = [2,1,5,7,6,90,8]

sorted= tab.clone
sorted.sort! {|x, y| y <=> x}

#
#for index in (0..sorted.count-1)
#    puts sorted[index]
#end

min=sorted[sorted.count-1]
max=sorted[0]

indexOfMinValue= tab.find_index(min)
indexOfMaxValue= tab.find_index(max)

puts "Indeksy te to: indexOfMinValue=#{indexOfMinValue} oraz indexOfMaxValue=#{indexOfMaxValue}"

resultTable=[]
counter=1
for i in (0..tab.count-1)
    if (i<=indexOfMinValue || i>=indexOfMaxValue)
        resultTable.push(tab[i])
    else
        resultTable.push(tab[indexOfMaxValue-counter])
        counter=counter+1
    end
end

puts "dlugosc to #{tab.count}"

puts resultTable

=end


#zad.7
=begin
tab = [2,5,2,1,6,90,8]

sorted= tab.clone
sorted.sort! {|x, y| y <=> x}

min=sorted[sorted.count-1]
indexOfMinValue= tab.find_index(min)

puts "indexOfMinValue=#{indexOfMinValue}"

resultTable=[]
for i in (0..tab.count-1)
    if (i>=indexOfMinValue)
        resultTable.push(tab[i])
    end
end

for i in (0..tab.count-1)
    if (i<=indexOfMinValue)
        resultTable.push(tab[i])
    end
end

puts resultTable

=end


#zad.8
=begin
tab = [2,5,1,2,1,90,8]

sorted= tab.clone
sorted.sort! {|x, y| y <=> x}

min=sorted[sorted.count-1]
indexOfMinValue= tab.find_index(min)

for i in (indexOfMinValue+1..tab.count-1)
    if (tab[i] == min)
        indexOfMinValue=i
    end
end


puts "indexOfMinValue=#{indexOfMinValue}"

for i in (0..tab.count-1)
    if (i<indexOfMinValue)
        puts tab[i]
    end
end

=end

#zad.9

=begin
numbers = [200, 2, 900, 300, 1000, 5]
sorted= numbers.clone
sorted.sort! {|x, y| y <=> x}

for index in (0..sorted.count-1)
    puts sorted[index]
end

min1=sorted[sorted.count-1]
min2=sorted[sorted.count-2]

indexOfMinValue= numbers.find_index(min1)
indexOfMinValue2= numbers.find_index(min2)

puts "Indeksy te to: index1=#{indexOfMinValue} oraz index2=#{indexOfMinValue2}"

counter =0
for i in (0..numbers.count-1)
    if (i>indexOfMinValue && i<indexOfMinValue2)
        counter +=1
    end
end

puts "Result= #{counter}"

=end

#zad.10

=begin
numbers = [200, 900, 2, 300, 1000, 5]
sorted= numbers.clone
sorted.sort! {|x, y| y <=> x}

for index in (0..sorted.count-1)
    puts sorted[index]
end

max1=sorted[0]
max2=sorted[1]

indexOfMaxValue= numbers.find_index(max1)
indexOfMaxValue2= numbers.find_index(max2)

puts "Indeksy te to: index1=#{indexOfMaxValue} oraz index2=#{indexOfMaxValue2}"

counter =0
for i in (0..numbers.count-1)
    if (i>indexOfMaxValue2 && i<indexOfMaxValue)
        counter +=1
    end
end

puts "Result= #{counter}"

=end


#zad.11
=begin

numbers = [200, 900, 2, 300, 1000, 5]
sorted= numbers.clone
sorted.sort! {|x, y| y <=> x}

for index in (0..sorted.count-1)
    puts sorted[index]
end

max=sorted[0]
min=sorted[sorted.count-1]


puts "Wartosc min: #{min} oraz max: #{max}"


=end


#zad.12
=begin
numbers = [200, 60, 66, 10, 2, 3]
numbers2 = [200, 2, 2, 25, 75, 35]

counter=0
hasNotSameNumber=true
for i in (0..numbers.count-1)
    for j in (0..numbers2.count-1)
        if (numbers[i]==numbers2[j])
            hasNotSameNumber=false
            #puts "test i:#{i} j: #{j} hasNotSameNumber: #{hasNotSameNumber}"
        end
    end
    if (hasNotSameNumber)
        counter+=1
    end
    hasNotSameNumber=true
end

puts "Result: #{counter}"

=end

=begin
#zad.13
numbers = [200, 2, 2, 25, 75, 35]
sorted= numbers.clone
sorted.sort! {|x, y| y <=> x}

max1=sorted[0]
max2=sorted[1]
puts "Wartosc max1: #{max1} oraz max2: #{max2}"
=end




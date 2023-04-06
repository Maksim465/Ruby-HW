# 1. Знайти найбільший та найменший елементи масиву.

arr = [3, 6, 1, 8, 2, 10]
min = arr[0]
max = arr[0]
for i in 0..(arr.length - 1) do
    if arr[i] < min
        min = arr[i]
    end
    if arr[i] > max
        max = arr[i]
    end
end
puts "Найменший елемент: #{min}" # Результат: "Найменший елемент: 1".
puts "Найбільший елемент: #{max}" # Результат: "Найбільший елемент: 10".

# 2. Обчислити суму елементів масиву.

arr = [3, 6, 1, 8, 2, 10]
sum = 0
for i in 0..(arr.length - 1) do
    sum += arr[i]
end
puts "Сума елементів: #{sum}" # # Результат: "Сума елементів: 30".

# 3. Знайти кількість входжень заданого елементу у масив.

arr = [3, 6, 1, 8, 2, 10]
elem = 6
count = 0
for i in arr do
    if i == elem
        count += 1
    end
end
puts "Кількість входжень елементу #{elem}: #{count}" # Результат: "Кількість елементів 6: 1".

# 4. Видалити всі входження заданого елементу з масиву.

arr = [3, 6, 1, 8, 2, 10]
elem = 6
for i in arr do
    if i == elem
        arr.delete(elem)
    end
end
print arr # Результат: "[3, 1, 8, 2, 10]".
puts

# 5. Перевернути масив.

arr = [3, 6, 1, 8, 2, 10]
reversed_arr = []
for i in (arr.length - 1).downto(0) do
    reversed_arr.push(arr[i])
end
print reversed_arr # Результат: "[10, 2, 8, 1, 6, 3]".
puts

# 6. Вивести масив у зворотному порядку, не використовуючи метод reverse.

arr = [3, 6, 1, 8, 2, 10]
reversed_arr = []
for i in 0..(arr.length - 1) do
    reversed_arr << arr[- i - 1]
end
print reversed_arr # Результат: "[10, 2, 8, 1, 6, 3]".
puts

# 7. Перевірити, чи містить масив заданий елемент.

arr = [3, 6, 1, 8, 2, 10]
elem = 6
search_elem = false
for i in arr do
    if i == elem
        search_elem = true
    end
end
if search_elem == true
    puts "Масив містить елемент #{elem}" # Результат: "Масив містить елемент 6".
else
    puts "Масив не містить елемент #{elem}" # Результат: "Масив не містить елемент 6".
end

# 8. Вивести всі парні елементи масиву.

arr = [3, 6, 1, 8, 2, 10]
even_arr = []
for i in 0..(arr.length - 1) do
    if arr[i] % 2 == 0
        even_arr.push(arr[i])
    end
end
print even_arr # Результат: "[6, 8, 2, 10]".
puts

# 9. Вивести всі непарні елементи масиву.

arr = [3, 6, 1, 8, 2, 10]
odd_arr = []
for i in 0..(arr.length - 1) do
    if arr[i] % 2 != 0
        odd_arr.push(arr[i])
    end
end
print odd_arr # Результат: "[3, 1]".
puts

# 10. Вивести новий масив, що містить квадрати елементів початкового масиву.

arr = [3, 6, 1, 8, 2, 10]
squared_arr = []
for i in 0..(arr.length - 1) do
    arr[i] **= 2
end
print arr # Результат: "[9, 36, 1, 64, 4, 100]".
puts

# 11. Перетворити масив в хеш, де ключами будуть елементи, а значеннями їх індекси у масиві.

arr = [3, 6, 1, 8, 2, 10]
hash = {}
for i in arr do
    hash[i] = arr.index(i)
end
print hash # Результат: "{3=>0, 6=>1, 1=>2, 8=>3, 2=>4, 10=>5}".
puts

# 12. Перетворити масив у новий масив, де кожен елемент - це сума його і попереднього елементів у початковому масиві.

arr = [3, 6, 1, 8, 2, 10]
summed_arr = []
for i in 0..(arr.length - 1) do
    summed_arr[i] = i == 0 ? arr[i] : arr[i] + arr[i - 1]
end
print summed_arr # Результат: "[3, 9, 7, 9, 10, 12]".
puts

# 13. Перетворити масив у новий масив, де кожен елемент - це сума його і всіх попередніх елементів у початковому масиві.

arr = [3, 6, 1, 8, 2, 10]
summed_arr = []
sum = 0
for i in 0..(arr.length - 1) do
    sum += arr[i]
    summed_arr.push(sum)
end
print summed_arr # Результат: "[3, 9, 10, 18, 20, 30]".
puts

# 14. Вивести індекс першого елементу масиву, який більше за задане число.

arr = [3, 6, 1, 8, 2, 10]
number = 5
result_index = 0
for i in arr do
    if i > number
        result_index = arr.index(i)
        break
    end
end
puts result_index # Результат: "1".

# 15. Вивести елементи масиву, які рівні заданому числу.

arr = [3, 6, 1, 8, 2, 10, 6, 1]
number = 6
result_arr = []
for i in arr do
    if i == number
        result_arr.push(i)
    end
end
print result_arr # Результат: "[6, 6]".
puts

# 16. Перетворити масив строк у новий масив, де кожна строка записана у зворотному порядку.

arr = ["hello", "world", "ruby"]
reversed_arr = []
for i in arr do
    reversed_arr.push(i.reverse)
end
print reversed_arr # Результат: "["olleh", "dlrow", "ybur"]".
puts

# 17. Вивести суму елементів масиву, які менші за задане число.

arr = [3, 6, 1, 8, 2, 10]
number = 5
sum = 0
for i in arr do
    if i < number
        sum += i
    end
end
puts sum # Результат: "6".

# 18. Вивести кількість унікальних елементів масиву.

arr = [1, 2, 3, 4, 3, 2, 1, 5, 6, 5]
uniq_arr = arr.uniq
unique_count = 0
for i in 0..(arr.length - 1) do
    if arr[i] != uniq_arr[i]
        unique_count += 1
    end
end
puts unique_count # Результат: "6".

# 19. Перетворити масив строк у новий масив, де кожна строка записана в верхньому регістрі.

arr = ["hello", "world", "ruby"]
upcased_arr = []
for i in arr do
    upcased_arr = arr.map(&:upcase)
end
print upcased_arr # Результат: "["HELLO", "WORLD", "RUBY"]".
puts

# 20. Знайдіть суму перших 10 натуральних чисел.

sum = 0
for i in 0..10 do
    sum += i
end
puts sum # Результат: "55".

# 21. Виведіть всі числа від 1 до 100, які діляться на 3 без остачі.

for i in 1..100 do
    if i % 3 == 0
        print i, " " # Результат: "3 6 9 12 15 18 21 24 27 30 33 36 39 42 45 48 51 54 57 60 63 66 69 72 75 78 81 84 87 90 93 96 99".
    end
end
puts

# 22. Знайдіть факторіал числа 5 (5!).

factorial = 1
for i in 1..5 do
    factorial *= i
end
puts factorial # Результат: "120".

# 23. Виведіть всі числа Фібоначчі до 100.

fibonacci = [1, 1]
for i in 2...100 do
    fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2]
    break if fibonacci[i] > 100
end
print fibonacci[0...fibonacci.length - 1] # Результат: "[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]".
puts

# 24. Знайдіть кількість слів у рядку:

string = "The quick brown fox jumps over the lazy dog"
word_count = 0
for i in 1..string.split.length do
    word_count += 1
end
puts word_count # Результат: "9".

# ------ Ітератори ------------ 

# 25. each - ітератор, який перебирає кожен елемент у колекції.

for i in 1..5 do
    print i, " " # Результат: "1 2 3 4 5".
end
puts

# 26. map - ітератор, який перетворює кожен елемент у колекції та повертає нову колекцію.

numbers = [1, 2, 3, 4, 5]
squares = []
for i in numbers do
    squares.push(i * i)
end
print squares # Результат: "[1, 4, 9, 16, 25]".
puts

# 27. select - ітератор, який вибирає елементи у колекції, які задовольняють певну умову.

numbers = [1, 2, 3, 4, 5]
even_numbers = []
for i in numbers do
    if i % 2 == 0
        even_numbers << i
    end
end
print even_numbers # Результат: "[2, 4]".
puts

# 28. reject - ітератор, який відкидає елементи у колекції, які задовольняють певну умову.

numbers = [1, 2, 3, 4, 5]
odd_number = []
for i in numbers do
    if i % 2 != 0
        odd_number << i
    end
end
print odd_number # Результат: "[1, 3, 5]".
puts

# 29. reduce - ітератор, який об'єднує всі елементи у колекції до одного значення, використовуючи певну операцію.

numbers = [1, 2, 3, 4, 5]
sum = 0
for i in numbers do
    sum += i
end
puts sum # Результат: "15".

# 30. each_with_index - ітератор, який перебирає кожен елемент та його індекс у колекції.

fruits = ['apple', 'banana', 'cherry']
for i in fruits do
    puts "#{fruits.index(i) + 1}. #{i}"
end
=begin
Результат: "1. apple
            2. banana
            3. cherry".    
=end

# 31. zip - ітератор, який об'єднує кілька колекцій до однієї колекції.

letters = ['a', 'b', 'c']
numbers = [1, 2, 3]
result = []
for i in 0..(letters.length - 1) do
    result.push([letters[i], numbers[i]])
end
print result # Результат: "[["a", 1], ["b", 2], ["c", 3]]".
puts

# 32. all? - ітератор, який перевіряє, чи задовольняють всі елементи у колекції певну умову.

numbers = [2, 4, 6, 8, 10]
all_even = true
for i in numbers do
    if i % 2 != 0
        all_even = false
        break
    end
end
puts all_even # Результат: "true".

# 33. any? - ітератор, який перевіряє, чи задовольняє хоча б один елемент у колекції певну умову.

numbers = [1, 2, 3, 4, 5]
any_three = false
any_five = false
for i in numbers do
    if i > 3
        any_three = true
        break
    end
end
puts any_three # Результат: "true".
for i in numbers do
    if i > 5
        any_three = true
        break
    end
end
puts any_five # Результат: "false".

# 34. none? - ітератор, який перевіряє, чи не задовольняють жоден елемент у колекції певну умову.

numbers = [1, 3, 5, 7, 9]
none = true
for i in numbers do
    if i % 2 == 0
        none = false
        break
    end
end
puts none # Результат: "true".

# 35. count - ітератор, який повертає кількість елементів у колекції, які задовольняють певну умову.

numbers = [1, 2, 3, 4, 5]
count_even = 0
for i in numbers do
    if i % 2 == 0
        count_even += 1
    end
end
puts count_even # Результат: "2".

# 36. find - ітератор, який повертає перший елемент у колекції, який задовольняє певну умову.

numbers = [1, 2, 3, 4, 5]
even_number = nil
for i in numbers do
    if i % 2 == 0
        even_number = i
        break
    end
end
puts even_number # Результат: "2".

# 37. find_all - ітератор, який повертає всі елементи у колекції, які задовольняють певну умову.

numbers = [1, 2, 3, 4, 5]
even_numbers = []
for i in numbers do
    if i % 2 == 0
        even_numbers.push(i)
    end
end
print even_numbers # Результат: "[2, 4]".
puts

# 38. partition - ітератор, який розділяє колекцію на дві колекції - одну з елементами, які задовольняють певну умову, та іншу з тими, що не задовольняють.

numbers = [1, 2, 3, 4, 5]
even_numbers = []
odd_numbers = []
for i in numbers do
    if i % 2 == 0
        even_numbers.push(i)
    else
        odd_numbers.push(i)
    end
end
print even_numbers # Результат: "[2, 4]".
puts
print odd_numbers # Результат: "[1, 3, 5]".
puts

# 39. drop - ітератор, який повертає колекцію, яка містить всі елементи після певного елемента у колекції.

numbers = [1, 2, 3, 4, 5]
result = []
x = numbers.length
for i in 2..(x - 1) do
    result << numbers[i]
end
print result # Результат: "[3, 4, 5]".
puts

# 40. drop_while - ітератор, який повертає колекцію, яка містить всі елементи у колекції, починаючи від певного елемента, який не задовольняє певну умову:

numbers = [1, 2, 3, 4, 5]
result = []
drop = false
for i in numbers do
    if i < 3
        next
    else
        drop = true
    end
    if drop
        result.push(i)
    end
end
print result
puts # Результат: "[3, 4, 5]".

# 41. take - ітератор, який повертає колекцію, яка містить певну кількість елементів з початку колекції.

numbers = [1, 2, 3, 4, 5]
take = []
for i in 0...2 do
    take << numbers[i]
end
print take # Результат: "[1, 2]".
puts

# 42. take_while - ітератор, який повертає колекцію, яка містить всі елементи у колекції до першого елемента, який не задовольняє певну умову.

numbers = [1, 2, 3, 4, 5]
result = []
for i in numbers do
    break unless i < 3
    result.push(i)
end
print result # Результат: "[1, 2]".
puts

# 43. map - ітератор, який створює нову колекцію, використовуючи певну функцію для кожного елементу у початковій колекції:

numbers = [1, 2, 3, 4, 5]
result = []
for i in numbers do
    result.push(i * i)
end
print result # Результат: "[1, 4, 9, 16, 25]".
puts

# 44. inject - ітератор, який обчислює певне значення, використовуючи всі елементи у колекції та певну функцію:

numbers = [1, 2, 3, 4, 5]
result = numbers[0]
for i in numbers[1..-1] do
    result += i
end
puts result # Результат: "15".
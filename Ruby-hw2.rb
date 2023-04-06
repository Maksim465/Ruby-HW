# 1) Дано масив чисел, знайти суму всіх додатніх чисел масиву не використовуючи цикли:

arr = [4, 0, -5, -1, 7, -1, 3]

# sum = ... #очікуваний результат 14"

sum_arr = 0

for i in arr do
    if i > 0
        sum_arr += i
    end
end

puts sum_arr

# => 14

# 2) Задано масив, створити новий масив із даних цього масиву які є рядком.

arr = ["apple", true, "kiwi", 4, 88, "33", false, "undefined", "JS"]

# newArr = ... #очікаваний результат ["apple", "kiwi", "33", "JS"]

str_arr = []

for i in arr do
    if i.is_a?(String)
        str_arr.push(i)
    end
end

print str_arr

puts

# => ["apple", "kiwi", "33", "undefined", "JS"]

# 3) Задано масив чисел, знайти число яке найбільш часто входить в масив, занести це число в новий масив і видалити всі входження цього числа із поточного масиву.

arr = [4, 5, 2, 1, 6, 5, 3, 5, 2, 5]

# data = ... # 5

counts_arr = arr.tally

data = counts_arr.max_by { |i, j| j}.first

arr = arr.reject { |i| i == data }

puts data

print arr

puts

# => 5
# => [4, 2, 1, 6, 3, 2]

# 4) Знайти в масиві двозначні(10+), трьохзначні(100+) та чотирьохзначні(1000+)  числа та повертає в масив їх кількість.

arr = [1, 2, 55, 3, 100, 333, 9999]

# puts arrNew # [1, 2, 1]

number_of_digits = [0, 0, 0]

for i in arr do
    if i.between?(10, 99)
        number_of_digits[0] += 1
    elsif i.between?(100, 999)
        number_of_digits[1] += 1
    elsif i.between?(1000, 9999)
        number_of_digits[2] += 1
    end
end

print number_of_digits

puts

# => [1, 2, 1]

# 5) Є масив [5, “Limit”, 12, “a”, “3”, 99, 2, [2, 4, 3, “33”, “a”, “text”], “strong”, “broun”]. Вивести нові масиви яка складаються із даних початкового масиву, але одного типу даних (не приводити тип стрінг в число навіть якщо там лише число)

arr = [5, "Limit", 12, "a", "3", 99, 2, [2, 4, 3, "33", "a", "text"], "strong", "broun"]

# Очікуваний результат:
# [5, 12, 99, 2, 2, 4, 3]
# [”Limit”, “a”, “3”, “33”, “a”, “text”, “strong”, “broun”]

def flatten_array (arr, numbers_arr, string_arr)
    arr.each do |i|
        if i.is_a?(Array)
            flatten_array(i, numbers_arr, string_arr)
        elsif i.is_a?(Numeric)
            numbers_arr.push(i)
        else
            string_arr.push(i)
        end
    end
end

numbers_arr = []

string_arr = []

flatten_array(arr, numbers_arr, string_arr)

print numbers_arr

puts

print string_arr

puts

# => [5, 12, 99, 2, 2, 4, 3]
# => ["Limit", "a", "3", "33", "a", "text", "strong", "broun"]

# 6) Дано рядок із іменами, перетворити їх в масив, в масиві повидаляти лишні пробели, посортувати значення і вивести в новий масив імена які більше 4 символів мають, а в старий масив вивести відсортовані значення і об'єднати їх в рядок.

names = "Alex,    Orysia, Misha,    Ira     , Paul"

# puts newNames; // 'Alex, Ira, Misha, Orysia, Paul'"

array_of_names = names.split(",").map(&:strip).sort

big_names = []

for i in array_of_names do
    if i.length > 4
        big_names.push(i)
    end
end

sorted_names = array_of_names.join(", ")

print big_names

puts

puts sorted_names

# => ["Misha", "Orysia"]
# => Alex, Ira, Misha, Orysia, Paul
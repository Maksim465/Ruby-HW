# 1. Спробувати зробити конкатенацію масиву всередині інтерполяції.

numbers1 = [1, 2, 3, 4, 5]
numbers2 = [6, 7, 8, 9, 10]
puts "#{numbers1 + numbers2}"

# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 2. є рядок із текстом, потрібно визначити кількість входжень літери "а" в рядку. "In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."

STR = "In my country we put our name first when we write it or when we say it, but in some official documents we have our names written at the end and the last-name first."
puts STR.count("a")

# => 9

# 3. Із тексту наведеного вище, створити масив із слів, які повторюються.

array = STR.split()
repeated_words = array.select { |i| array.count(i) > 1 }.uniq
print repeated_words, "\n"

# => ["we", "our", "when", "the"]

# 4. Зробити кожне слово в тексті щоб починалось із великої літери.

words = STR.split
for i in words do
    print i.capitalize, " "
end
puts

# => In My Country We Put Our Name First When We Write It Or When We Say It, But In Some Official Documents We Have Our Names Written At The End And The Last-name First.

# 5. Зробити із наведеного тексту масив, через розділювач кому.

coma = STR.split(", ")
print coma
puts

# => ["In my country we put our name first when we write it or when we say it", " but in some official documents we have our names written at the end and the last-name first."]

# 6. Перетворити масив в текст, і щоб на місці де була кома стояла трикрапка(...).

str = array.join(" ")
replace = str.gsub(",", "...")
puts replace

# => In my country we put our name first when we write it or when we say it... but in some official documents we have our names written at the end and the last-name first.

# 7. Згенерувати масив із 10 елементів, і засетити туда сьогоднішню дату.

array_from_date = Array.new(10)
for i in 0..9 do
    array_from_date[i] = Time.new.strftime("%d-%m-%y")
end
puts array_from_date[0]

# => 04-04-23

# 8. Використати метод uniq для згенерованого масиву, після чого викликати масив(чи зміниться значення масиву?).

changed_array = array_from_date.uniq
print "Array: ", changed_array
puts
print "Array size: ", changed_array.size

# => Array: ["04-04-23"]
# => Array size: 1

# Чи зміниться значення масиву?
# Відповідь: ні, значення не зміниться, проте зміниться розмір (size/count/length) масиву.
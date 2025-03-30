#!/bin/bash

# создаём каталог task с вложенными директориями
# task
#   dir1
#   dir2
#   dir3
#       dir4

mkdir /task/dir_1
mkdir /task/dir_2
mkdir /task/dir_3
mkdir /task/dir_3
# изменяем текущую директорию на task
cd /task
pwd 

# создаём пустой файл task/dir2/empty

touch /task/dir_2/empty

# создаём файл task/dir2/hello.sh с таким содержанием:
# #!/bin/bash
# echo "$1, привет!"
touch /task/dir_2/hello.sh 
echo "$1, привет!" > /task/dir_2/hello.sh
cat /task/dir_2/hello.sh
# устанавливаем для task/dir2/hello.sh права rwxrw-r--
chmod -rwxrw-r-- /task/dir_2/hello.sh

# сохраняем список файлов task/dir2 в task/dir2/list.txt
mv /task/dir_2 task/dir_2/list.txt

# копируем содержимое каталога task/dir2 в каталог task/dir3/dir4
cp -r -T /task/dir_2 task/dir_3/dir_4

# записываем в task/dir1/summary.txt список файлов с расширением *.txt
# находящихся в task, включая поддиректории
mv /task/*.txt /task/dir_1/summary.txt 

# дописываем в task/dir1/summary.txt содержимое task/dir2/list.txt
mv /task/dir_2/list.txt /task/dir_1/summary.txt

# определяем переменную окружения NAME со значением "Всем студентам"
alias --NAME="Всем студентам"

# запускаем task/dir2/hello.sh с переменной окружения NAME в качестве аргумента
# вывод скрипта должен дописаться в файл task/dir1/summary.txt
mv --NAME /task/dir_2/hello.sh /task/dir_1/summary.txt
# перемещаем с переименованием task/dir1/summary.txt в task/Практическое задание
mv /task/dir_1/summary.txt /task/Практическое задание
# выводим на консоль содержимое файла task/Практическое задание
ls /task/Практическое задание
# ищем в файле "Практическое задание" строки, которые содержат слово "dir"
# и затем отсортировываем их
grep -i "dir" "Практичнеское задание" | sort

# меняем текущую директорию на родительскую для task
cd /

# удаляем директорию task со всем содержимым
rm /task
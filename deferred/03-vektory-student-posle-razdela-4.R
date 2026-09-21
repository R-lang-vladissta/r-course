# Отложенная часть студенческого скрипта занятия 3
# Разделы после индексирования

# 5. Сортировка значений ===========================================

signal <- c(0.72, 0.31, 0.56, 0.44, 0.83)

sort(signal)
sort(signal, decreasing = TRUE)
order(signal)

sort(names_students)

order(height)

names_students[order(height)]

signal[order(signal)]

# Индексы из order() можно применить к связанному вектору.
students_height <- c(168, 181, 174, 177)
students_names <- c("Anna", "Boris", "Elena", "Pavel")

students_order <- order(students_height)
students_names[students_order]


# Задание 4. Образцы по возрастанию сигнала ------------------------

sample_id <- c("S1", "S2", "S3", "S4", "S5")
signal <- c(0.72, 0.31, 0.56, 0.44, 0.83)

# Значения на одинаковых позициях относятся к одному образцу.
#
# 1. Отсортируйте сигналы по возрастанию.
# 2. Сохраните индексы, упорядочивающие сигнал, в signal_order.
# 3. Используйте signal_order, чтобы одинаково расположить sample_id
#    и signal.
# 4. Присвойте элементам signal имена из sample_id и отсортируйте
#    именованный вектор по убыванию.
# 5. Найдите максимальный сигнал.

# Напишите код ниже:




# 6. Логические векторы ============================================

temperature <- c(36.4, 37.1, 38.2, 36.8)
temperature >= 37

# Объединение условий.
is_normal <- (temperature >= 36.5) & (temperature <= 37.2)
is_normal

group <- c("control", "treatment", "control", "placebo")
group == "control"


# Логическое индексирование ---------------------------------------

measurements <- c(4.2, 8.1, 3.7, 6.4)
is_high <- measurements >= 5

is_high
measurements[is_high]
measurements[measurements >= 5]

# Одна маска может отбирать связанные элементы из разных векторов.
student_name <- c("Daniel", "Sasha", "Robert", "Alice")
age <- c(15, 32, 18, 8)
is_adult <- age >= 18

student_name[is_adult]
age[is_adult]

# Логическое индексирование слева от присваивания изменяет элементы.
measurements[measurements < 4] <- NA
measurements


# Функции для логических векторов ----------------------------------

quality_check <- c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE)

sum(quality_check)
mean(quality_check)
any(quality_check)
all(quality_check)

# which() возвращает позиции TRUE.
which(quality_check)


# Задание 5. Контроль качества -------------------------------------

# Допустимая концентрация калибровочного раствора — от 95 до
# 105 мг/л включительно.
sample_id <- c("S1", "S2", "S3", "S4", "S5", "S6")
calibration <- c(98, 107, 101, 94, 105, 99)

# 1. Создайте is_valid, показывающий допустимые измерения.
# 2. Извлеките значения и имена образцов, прошедших контроль.
# 3. Извлеките значения и имена образцов, не прошедших контроль.
# 4. Посчитайте число и долю прошедших контроль образцов.
# 5. Проверьте, прошли ли контроль все образцы и есть ли хотя бы один
#    прошедший.
# 6. Замените не прошедшие контроль значения на NA.

# Напишите код ниже:




# 7. Дополнительные операции =======================================

# Принадлежность набору.
sample_group <- c("control", "treated", "placebo", "treated", "excluded")
allowed_group <- c("control", "placebo")

sample_group %in% allowed_group
sample_group[sample_group %in% allowed_group]

# Повторяющиеся и уникальные значения.
sample_id <- c("S01", "S02", "S03", "S02", "S04", "S01")

unique(sample_id)
duplicated(sample_id)
sample_id[duplicated(sample_id)]

# Пропущенные значения.
measurements <- c(4.2, NA, 5.7, 6.3)

is.na(measurements)
mean(measurements)
mean(measurements, na.rm = TRUE)

# measurements == NA не проверяет наличие пропусков.


# Задание 6. Проверка идентификаторов и измерений ------------------

sample_id <- c("S01", "S02", "S03", "S04", "S03", "S05", "S06", "S02")
concentration <- c(18.2, 21.4, NA, 19.7, 24.1, 17.9, NA, 20.3)

# 1. Получите вектор уникальных идентификаторов.
# 2. Найдите повторные появления идентификаторов.
# 3. С помощью is.na() проверьте, какие измерения пропущены.
# 4. Рассчитайте среднюю концентрацию сначала обычным способом,
#    а затем с na.rm = TRUE. Объясните различие результатов.

# Напишите код ниже:




# 1. You have a list which contains country names. you need to sort this list according to the length of elements ascending order
# 	ls = ['Uzbekistan','USA','UK','Germany','Chine']
# expected output: ['UK','USA,'Chine','Germany','Uzbekistan']

ls = ['Uzbekistan','USA','UK','Germany','Chine']
sorted_ls = sorted(ls, key=len)
print(sorted_ls)

# 2.Write a Python program to find the indexes of numbers in a following list below a given threshold.
# 	ls = [0, 12, 45, 3, 4923, 322, 105, 29, 15, 39, 55]
# 	threshold = 100
# 	expected output: [0, 1, 2, 3, 7, 8, 9, 10]

ls = [0, 12, 45, 3, 4923, 322, 105, 29, 15, 39, 55]
threshold = 100
indexes = [i for i, num in enumerate(ls) if num < threshold]
print(indexes)

# 3.Write a recursive function to find the sum of the digits of a number.
def sum_of_digits(n):
    if n == 0:
        return 0
    return n % 10 + sum_of_digits(n // 10)

print("Sum of digits:", sum_of_digits(123))


# task 4
# -----------------------------------------------------------------------------------------------------
#       Using student.json file, create CSV file called student.csv with following columns like ID,Name,Age
import json
import csv


with open("student.json", "r") as f:
    data = json.load(f)

students = data["Students"]   

with open("student.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["ID", "Name", "Age"])

    for student in students:
        writer.writerow([
            student["ID"],
            student["Name"],
            student["Age"]
        ])


# task 5
# -----------------------------------------------------------------------------------------------------
#       using employee_data.csv file.
import pandas as pd 

df = pd.read_csv("employee_data.csv")

        # task 1. Create 4 separate csv file for 4 different countries

countries = df["Birth_Country"].unique()

for country in countries:
    country_df = df[df["Birth_Country"] == country]
    country_df.to_csv(f"{country}_employees.csv", index=False)

        # task 2. Find the Most Experienced Employee in Each Country

df["HireDate"] = pd.to_datetime(df["HireDate"])
earliest = df.groupby('Birth_Country')["HireDate"].transform("min")
most_experienced = df[df["HireDate"] == earliest]
print(most_experienced)

        # task 3. Find Employees Earning Above Their Country’s Average Salary

avg_salary = df.groupby("Birth_Country")["Salary"].transform("mean")
above_avg_salary = df[df["Salary"] > avg_salary]
print(above_avg_salary)

#!/usr/bin/python3
"""
Python script that, using this REST API, for a given employee ID,
returns information about his/her TODO list progress
"""
import requests
import sys

def get_employee_todo_progress(employee_id):
    #URL of the API
    url = f"https://jsonplaceholder.typicode.com/users/{employee_id}/todos"

    try:
        # Fetching data from the API
        response = requests.get(url)
        data = response.json()

        if response.status_code == 200:
            # Filter complete tasks
            completed_tasks = [task for task in data if task['completed']]

            # Extracting employee name
            employee_name = data[0]['username']

            # Counting completed tasks
            num_completed_tasks = len(completed_tasks)

            # Total number of tasks
            total_num_tasks = len(data)

            # Displaying information
            print(F"Employee {employee_name} is done with tasks ({num_completed_tasks}/{total_num_tasks}):")
            for tasks in completed_tasks:
                print(f"\t{task['title']}")

        else:
            print("Error: Unable to fetch data from the API.")
    except requests.excepyions.RequestException as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py EMPLOYEE_ID)
    else:
        employee_id = int(sys.argv[1])
        get_employee_todo_progress(employee_id)

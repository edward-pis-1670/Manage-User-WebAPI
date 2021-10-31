# Manage-users-web-api
Web api use ExpressJS + Restful API + HTML + Ajax + CSS to manage user

```
1. Clone code
2. Change file .env
3. Import file sample.sql (attached)
4. npm ci
5. npm start
```



# APIs list

## Employees

1. Get all employees
    + method: GET
    + http://localhost:1999/api/employees
    + output:
    ```
    {
        "success": true,
        "data": [
            {
                "employeeNumber": 2,
                "firstName": "Hermione",
                "lastName": "Granger",
                "extension": "x865",
                "email": "hermione@gmail.com",
                "jobTitle": "Sale",
                "reportsTo": null,
                "officeCode": 2
            },
            {
                "employeeNumber": 3,
                "firstName": "Rubeus",
                "lastName": "Hagrid",
                "extension": "x8625",
                "email": "rubeus@gmail.com",
                "jobTitle": "Sale",
                "reportsTo": 2,
                "officeCode": 1
            },
            {
                "employeeNumber": 4,
                "firstName": "Ron",
                "lastName": "Weasley",
                "extension": "x8625",
                "email": "ron@gmail.com",
                "jobTitle": "Assistant",
                "reportsTo": 2,
                "officeCode": 1
            },
            {
                "employeeNumber": 5,
                "firstName": "Draco",
                "lastName": "Malfoy",
                "extension": "x8625",
                "email": "draco@gmail.com",
                "jobTitle": "Sale",
                "reportsTo": 4,
                "officeCode": 1
            }
        ]
    }
    ```

2. Get employee by id (employeeNumber)
    + method: GET
    + http://localhost:1999/api/employees/2
    + output: 
    ```
    {
        "success": true,
        "data": {
            "employeeNumber": 2,
            "firstName": "Hermione",
            "lastName": "Granger",
            "extension": "x865",
            "email": "hermione@gmail.com",
            "jobTitle": "Sale",
            "reportsTo": null,
            "officeCode": 2
        }
    }
    ```

3. Create a new employee
    + method: POST
    + http://localhost:1999/api/employees
    + input: 
    ```
    {
        "firstName":"Hermione",
        "lastName":"Granger",
        "extension":"x865",
        "email":"hermione@gmail.com",
        "officeCode":2,
        "jobTitle":"Sale",
        "reportsTo":1
    }
    ```
    + output: 
    ```
    {
        "success": true,
        "message": "Create a new employee successfully!",
        "data": {
            "employeeNumber": 2,
            "firstName": "Hermione",
            "lastName": "Granger",
            "extension": "x865",
            "email": "hermione@gmail.com",
            "officeCode": 2,
            "jobTitle": "Sale",
            "reportsTo": 1
        }
    }
    ```

4. Update information employee
    + method: PUT
    + http://localhost:1999/api/employees/1
    + input: 
    ```
    {
        "lastName":"Harry",
        "firstName":"Potter",
        "extension":"x456",
        "email":"harry_change@gmail.com",
        "officeCode":1,
        "reportsTo":2,
        "jobTitle":"Sale"
    }
    ```
    + output: 
    ```
    {
        "success": true,
        "message": "Update successfully"
    }
    ```

5. Delete a employee
    + method: DELETE
    + http://localhost:1999/api/employees/1
    + output: 
    ```
    {
        "success": true,
        "message": "Deleted!"
    }
    ```

## Customers

1. Get all customers
    + method: GET
    + http://localhost:1999/api/customers
    + output: 
    ```
    {
        "success": true,
        "data": [
            {
                "customerNumber": 1,
                "customerName": "Neville",
                "contactLastName": "Long",
                "contactFirstName": "Bottom",
                "phone": "062326565",
                "addressLine1": "Co Nhue 1",
                "addressLine2": "Nam Tu Liem",
                "city": "Ha Noi",
                "state": "Nam Tu Liem",
                "postalCode": "10000",
                "country": "Viet Nam",
                "creditLimit": 1000,
                "salesRepEmployeeNumber": 1
            },
            {
                "customerNumber": 2,
                "customerName": "Aloha",
                "contactLastName": "Kim",
                "contactFirstName": "Bum",
                "phone": "03265895",
                "addressLine1": "Co Nhue 1",
                "addressLine2": "Nam Tu Liem",
                "city": "Ha Noi",
                "state": "Nam Tu Liem",
                "postalCode": "10000",
                "country": "Viet Nam",
                "creditLimit": 1000,
                "salesRepEmployeeNumber": 2
            },
            {
                "customerNumber": 3,
                "customerName": "Hoangud",
                "contactLastName": "Bung",
                "contactFirstName": "Jan",
                "phone": "02356895",
                "addressLine1": "Co Nhue 2",
                "addressLine2": "Nam Tu Liem",
                "city": "Ha Noi",
                "state": "Nam Tu Liem",
                "postalCode": "10000",
                "country": "Viet Nam",
                "creditLimit": 1000,
                "salesRepEmployeeNumber": 3
            },
            {
                "customerNumber": 4,
                "customerName": "TungKinh",
                "contactLastName": "Bang",
                "contactFirstName": "Bang",
                "phone": "02326566",
                "addressLine1": "Co Nhue 2",
                "addressLine2": "Nam Tu Liem",
                "city": "Ha Noi",
                "state": "Nam Tu Liem",
                "postalCode": "10000",
                "country": "Viet Nam",
                "creditLimit": 1000,
                "salesRepEmployeeNumber": 1
            }
        ]
    }
    ```

2. Get customer by id (customerNumber)
    + method: GET
    + http://localhost:1999/api/customers/1
    + output: 
    ```
    {
        "success": true,
        "data": {
            "customerNumber": 1,
            "customerName": "Neville",
            "contactLastName": "Long",
            "contactFirstName": "Bottom",
            "phone": "062326565",
            "addressLine1": "Co Nhue 1",
            "addressLine2": "Nam Tu Liem",
            "city": "Ha Noi",
            "state": "Nam Tu Liem",
            "postalCode": "10000",
            "country": "Viet Nam",
            "creditLimit": 1000,
            "salesRepEmployeeNumber": 1
        }
    }
    ```

3. Create a new customer
    + method: POST
    + http://localhost:1999/api/customers
    + input: 
    ```
    {
        "customerName":"Neville", 
        "contactLastName":"Long", 
        "contactFirstName":"Bottom", 
        "phone":"062326565", 
        "addressLine1":"Co Nhue 1", 
        "addressLine2":"Nam Tu Liem",
        "city":"Ha Noi", 
        "state":"Nam Tu Liem", 
        "postalCode":"10000", 
        "country":"Viet Nam", 
        "salesRepEmployeeNumber":"1", 
        "creditLimit":"1000"
    }
    ```
    + output: 
    ```
    {
        "success": true,
        "message": "Created!",
        "data": {
            "customerNumber": 1,
            "customerName": "Neville",
            "contactLastName": "Long",
            "contactFirstName": "Bottom",
            "phone": "062326565",
            "addressLine1": "Co Nhue 1",
            "addressLine2": "Nam Tu Liem",
            "city": "Ha Noi",
            "state": "Nam Tu Liem",
            "postalCode": "10000",
            "country": "Viet Nam",
            "salesRepEmployeeNumber": "1",
            "creditLimit": "1000"
        }
    }
    ```

4. Update information a customer
    + method: PUT
    + http://localhost:1999/api/customers/1
    + input: 
    ```
    {
        "customerName":"New Name", 
        "contactLastName":"Long", 
        "contactFirstName":"Bottom", 
        "phone":"00000000", 
        "addressLine1":"Co Nhue 1", 
        "addressLine2":"Nam Tu Liem",
        "city":"Ha Noi", 
        "state":"Nam Tu Liem", 
        "postalCode":"10000", 
        "country":"Viet Nam", 
        "salesRepEmployeeNumber":"2", 
        "creditLimit":"1000"
    }
    ```

    + output:
    ```
    {
        "success": true,
        "message": "Updated successfully"
    }
    ```

5. Delete a customer
    + method: DELETE
    + http://localhost:1999/api/customers/1
    + output:
    ```
    {
        "success": true,
        "message": "Deleted!"
    }
    ```
6. Re-active exist customer (when the employee refer to the customer is deleted, and salesRepEmployeeNumber has no longer (NULL value)).
    + method: PATCH
    + http://localhost:1999/api/customers/1
    + input:
    ```
    {
        "newId": 4
    }
    ```
    + output: 
    ```
    {
        "success": true,
        "message": "Actived successfully"
    }
    ```


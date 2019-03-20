# team13
HomeWork11
tescase#1
Test Type:Функциональность
Name test: Регистрация с валидными данными 
Test goal: Убедиться, что риквест успешно отправлен
Preconditions: Приложение Postman открыто
Steps: 1. Ввести https://test-api.umarkets.com/registration/account?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23register ,
2.Ввести данные: "email": "test666test66@gmail.com","password": "333qwe333", "confirm": "333qwe333". 3. Тип запроса Post 4. Нажать "Send"
Expected Results: Status 200 ok


tescase#7
Test Type:Функциональность
Name test: Авторизация с валидными данными 
Test goal: Убедиться, что авторизороватся с валидными данными возможно.
Preconditions: Приложение Postman открыто
Steps: 1. Ввести в строку URL "https://test-api.umarkets.com/account/logon?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23login" ,
2.Выбрать тип запроса "Post". 
3.Выбрать "Body" => "raw" => "JSON". 
4.Ввести данные: "{"lang":null,"email":"vlad.bugs.busters@gmail.com","password":"qwe123"}".  
5. Нажать "Send".
Expected Results: Status 200 ok

tescase#8
Test Type:Функциональность
Name test: Авторизация с невалидными данными 
Test goal: Убедиться, что авторизироватся с невалидными данными нельзя.
Preconditions: Приложение Postman открыто
Steps: 1. Ввести в строку URL "https://test-api.umarkets.com/account/logon?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23login" ,
2.Выбрать тип запроса "Post". 
3.Выбрать "Body" => "raw" => "JSON". 
4.Ввести данные: "{"lang":null,"email":"vlad.bugs.busters@gmail.comm","password":"qwe1231"}".  
5. Нажать "Send".
Expected Results: Status 401 Unauthorized.

tescase#9
Test Type:Функциональность
Name test: Авторизация с пустыми полями. 
Test goal: Убедиться, что авторизироватся с пустыми полями нельзя.
Preconditions: Приложение Postman открыто
Steps: 1. Ввести в строку URL "https://test-api.umarkets.com/account/logon?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23login" ,
2.Выбрать тип запроса "Post". 
3.Выбрать "Body" => "raw" => "JSON". 
4.Ввести данные: "{"lang":null,"email":"","password":""}".  
5. Нажать "Send".
Expected Results: Status 401 Unauthorized.

# team13
HomeWork11


tescase#1
Test Type:Функциональное теститирование
Name test: Регистрация с валидными данными 
Test goal: Убедиться, что риквест успешно отправлен
Preconditions: Приложение Postman открыто
Steps:
1. Ввести https://test-api.umarkets.com/registration/account?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23register

2/Выбрать "Body" => "raw" => "JSON"

3.Ввести данные: "email": Enter new valid email, "password": "333qwe333", "confirm": "333qwe333". 
4. Тип запроса Post 
5. Нажать "Send"
Expected Results: Status 200 ok

tescase#2
Test Type:Функциональное теститирование
Name test:Регистрация с уже существующим имейлом на сайте
Test goal: Убедиться, что риквест отправлен и ошибка высветилась
Preconditions: Приложение Postman открыто
Steps: 1. Ввести https://test-api.umarkets.com/registration/account?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23register
Выбрать "Body" => "raw" => "JSON"
2.Ввести данные:
"LinkID": "",
"confirm": "12345qwe",
"email": "fhfhf@i.ua",
"lang": "en",
"password": "12345qwe"
3. Выбрать тип запроса Post
4. Нажать "Send"
Expected Results:Error 500, "message": "User with this email is already registered.

testcase#3
Test Type:Функциональное теститирование
Name test:Регистрация с пустыми полями в строке Пароль
Test goal: Убедиться, что риквест отправлен и ошибка высветилась
Preconditions: Приложение Postman открыто
Steps: 1. Ввести https://test-api.umarkets.com/registration/account?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23register
.Выбрать "Body" => "raw" => "JSON"
2.Ввести данные:
"LinkID": "",
"confirm": "",
"email": "test666test66@gmail.com",
"lang": "en",
"password": ""
3. Выбрать тип запроса Post
4. Нажать "Send"
Expected reusult: statusCode": 400 Bad Request "message": "Password is required."

testcase#4
Test Type:Функциональное теститирование
Name test:Регистрация с неверным паролем в поле Confirm Password
Test goal: Убедиться, что риквест отправлен и ошибка высветилась
Preconditions: Приложение Postman открыто
Steps: 1. Ввести https://test-api.umarkets.com/registration/account?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23register
2.Выбрать "Body" => "raw" => "JSON"
3.Ввести данные:
"confirm": "12345qwe",
"email": "djshfkjs@gmail.com",
"lang": "en",
"password": "12345qw"
4. Выбрать тип запроса Post
5. Нажать "Send"
Expected reusult: Status 500 Internal Server

testcase#5 
Test Type:Функциональное теститирование
Name test:Регистрация с пустыми полями
Test goal: Убедиться, что риквест отправлен и ошибка высветилась
Preconditions: Приложение Postman открыто
Steps: 1. Ввести https://test-api.umarkets.com/registration/account?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23register
2.Выбрать "Body" => "raw" => "JSON"
3.Ввести данные:
	"confirm": "",
"email": "",
"lang": "",
"password": ""
4. Выбрать тип запроса Post
5. Нажать "Send"
Expected reusult: Status 400 Bad Request "message": "Password is required. The Email field is not a valid e-mail address. The Email field is required."

tescase#6
Test Type:Функциональное теститирование
Name test: Авторизация с валидными данными 
Test goal: Убедиться, что авторизороватся с валидными данными возможно.
Preconditions: Приложение Postman открыто
Steps: 1. Ввести в строку URL "https://test-api.umarkets.com/account/logon?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23login" ,
2.Выбрать тип запроса "Post". 
3.Выбрать "Body" => "raw". 
4.Ввести данные: "{"lang":null,"email":"vlad.bugs.busters@gmail.com","password":"qwe123"}".  
5. Нажать "Send".
Expected Results: Status 200 ok

tescase#7
Test Type:Функциональное теститирование
Name test: Авторизация с невалидными данными 
Test goal: Убедиться, что авторизироватся с невалидными данными нельзя.
Preconditions: Приложение Postman открыто
Steps: 1. Ввести в строку URL "https://test-api.umarkets.com/account/logon?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23login" ,
2.Выбрать тип запроса "Post". 
3.Выбрать "Body" => "raw". 
4.Ввести данные: "{"lang":null,"email":"vlad.bugs.busters@gmail.comm","password":"qwe1231"}".  
5. Нажать "Send".
Expected Results: Status 401 Unauthorized.

tescase#8
Test Type:Функциональное теститирование
Name test: Авторизация с пустыми полями. 
Test goal: Убедиться, что авторизироватся с пустыми полями нельзя.
Preconditions: Приложение Postman открыто
Steps: 1. Ввести в строку URL "https://test-api.umarkets.com/account/logon?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%23login" ,
2.Выбрать тип запроса "Post". 
3.Выбрать "Body" => "raw". 
4.Ввести данные: "{"lang":null,"email":"","password":""}".  
5. Нажать "Send".
Expected Results: Status 401 Unauthorized.

tescase#9
Test Type:Функциональное теститирование
Name test:Восстановление пароля с валидным email
Preconditions: Приложение Postman открыто
Steps:
1. В поле для URL ввести "https://test-api.umarkets.com/account/forgot-password?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%3Flang%3Den%23forgotPassword" 
2. Выбрать метод POST
3. Во вкладке "Body" выбрать "raw" и поменять "Text" на JSON 
4. В поле для ввода вставить "{"lang":null,"email":"cavehodipo@mail-pro.info","baseLink":"https://test-my.umarkets.com/#resetPassword/","culture":"en"}"
5. Нажать Send
Exepted result: Status 200 OK.

tescase#10
Test Type:Функциональное теститирование
Name test:Восстановление пароля с валидным email
Preconditions: Приложение Postman открыто
Steps:
1. В поле для URL ввести "https://test-api.umarkets.com/account/forgot-password?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%3Flang%3Den%23forgotPassword" 
2. Выбрать метод POST
3. Во вкладке "Body" выбрать "raw" и поменять "Text" на JSON 
4. В поле для ввода вставить "{"lang":null,"email":"cavehodipo@@mail-pro.info","baseLink":"https://test-my.umarkets.com/#resetPassword/","culture":"en"}"
5. Нажать Send
Exepted result: Status 500 Internal server error.

tescase#11
Test Type:Функциональное теститирование
Name test:Восстановление пароля с пустым email
Preconditions: Приложение Postman открыто
Steps:
1. В поле для URL ввести "https://test-api.umarkets.com/account/forgot-password?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%3Flang%3Den%23forgotPassword" 
2. Выбрать метод POST
3. Во вкладке "Body" выбрать "raw" и поменять "Text" на JSON 
4. В поле для ввода вставить "{"lang":null,"email":"","baseLink":"https://test-my.umarkets.com/#resetPassword/","culture":"en"}"
5. Нажать Send
Exepted result: Status 500 Internal server error.

tescase#12
Test Type:Функциональное теститирование
Name test:Восстановление пароля несуществующего юзера
Preconditions: Приложение Postman открыто
Steps:
1. В поле для URL ввести "https://test-api.umarkets.com/account/forgot-password?currentUrl=https%3A%2F%2Ftest-my.umarkets.com%2F%3Flang%3Den%23forgotPassword" 
2. Выбрать метод POST
3. Во вкладке "Body" выбрать "raw" и поменять "Text" на JSON 
4. В поле для ввода вставить "{"lang":null,"email":"aumad@i.ua","baseLink":"https://test-my.umarkets.com/#resetPassword/","culture":"en"}"
5. Нажать Send
Exepted result: Status 500 Internal server error.

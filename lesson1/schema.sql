/*
База данных личной библиотеки пользователей. Пользователь после авторизации может вводить информацию о книгах,
имеющихся у него в наличии, осуществлять поиск по нему.
*/

CREATE TABLE books (
    id INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(255),
    author VARCHAR(255)
);

CREATE TABLE users (
    id INT GENERATED ALWAYS AS IDENTITY,
    login VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE books_specific (
    id INT GENERATED ALWAYS AS IDENTITY,
    book_id int,
    year DATE,
    condition VARCHAR(255),
    price INT,
    addition_info VARCHAR(255),
    user_id int
);

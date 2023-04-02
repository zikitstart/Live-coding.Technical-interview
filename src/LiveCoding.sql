
    //Есть таблица book с колонками name и author_id и таблица author с колонками id и name.
    //Вывести все книги определенного автора (author.name).


test=# SELECT * FROM book;
id |     name     | author_id
----+--------------+-----------
  1 | Война и мир  |         1
  2 | Мертвые души |         2
  3 | Ревизор      |         2
(3 строки)


test=# SELECT * FROM author;
        id |  author_name
-----------+---------------
         1 | Л. Н. Толстой
         2 | Н. В. Гоголь
(2 строки)


test=# SELECT author_name , name AS "book_name" FROM book INNER JOIN author ON author.id=book.author_id WHERE author_name='Н. В. Гоголь';
<?php
define ( "DB_HOST", "localhost" ); // set database host
define ( "DB_USER", "root" ); // set database user
define ( "DB_PASS", "" ); // set database password
define ( "DB_PORT", 3306 ); // set database port
define ( "DB_NAME", "dit_webdev" ); // set database name
define ( "DB_CHARSET", "utf8" ); // set database charset
define ( "DB_DEBUGMODE", true ); // set database charset

define ( "TITLE_WEB_APP", "Book Collection" );
define ( "FOOTER", "Copyrigth - Sean O'Connor C13455928 and Rudolf Suguitan C13460538");

//error messages
define ( "ERROR_LOGIN_MSG", "INVALID NAME/PASSWORD!");
define ( "ERROR_INSERTBOOK_MSG", "BOOK ALREADY EXIST!");
define ( "ERROR_INSERTBOOK_MSG2", "INVALID NAME, AUTHOR OR CATEGORY INPUTS!");
define ( "ERROR_UPDATEBOOK_MSG", "BOOK ALREADY EXIST!");
define ( "ERROR_UPDATEBOOK_MSG2", "INVALID NAME, AUTHOR OR CATEGORY INPUTS!");
define ( "ERROR_INSERTUSER_MSG", "INVALID NAME OR SURNAME INPUTS!");
define ( "ERROR_EMAILDUP_MSG", "EMAIL INVALID OR ALREADY EXIST!");
define ( "ERROR_PASSDUP_MSG", "PASSWORD INVALID OR ALREADY EXIST!");

//headings for each column of the table
define ( "B_NAME", "Title");
define ( "B_AUTH", "Author");
define ( "B_CATEG", "Category");
define ( "D_PUB", "Date of Publication");
?>



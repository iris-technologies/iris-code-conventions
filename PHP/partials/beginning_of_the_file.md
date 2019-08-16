# Beginning of the file

```php
// file_name.php
////////////////////////////////////////////////////////////

//To test:
//http://localhost/path_to_file/file_name.php
//http://sandbox.iristech.co/path_to_file/file_name.php
//http://iristech.co/path_to_file/file_name.php
//
//Explanation video:
//PLACE_URL_HERE
//Refactoring videos:
//PLACE_URL_HERE
//Code review videos:
//PLACE_URL_HERE
//
//Require as:
//require_once(DOCUMENT_ROOT.'/custom-code/email-auth/config.php');
////////////////////////////////////////////////////////////

```

Then this is commonly followed by

```php
////////////////////////////////////////////////////////////
if(!defined('DOCUMENT_ROOT'))
{
    define('DOCUMENT_ROOT', $_SERVER['DOCUMENT_ROOT']);
}

////////////////////////////////////////////////////////////
if(session_status() === PHP_SESSION_NONE)
{
    session_start();
}
```

# Beginning of the file

```php
// /path_to_file/file_name.php
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
//require_once(DOCUMENT_ROOT.'/path_to_file/file_name.php');
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
if(!defined('CURRENT_PAGE_NAME'))
{
	define('CURRENT_PAGE_NAME', basename(__FILE__, '.php'));
}

////////////////////////////////////////////////////////////
if(session_status() === PHP_SESSION_NONE)
{
    session_start();
}
```

And then check for permissions:

```php
////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT.'/custom-code/externals/iris-php-utils/permission_util.php');
redirect_if_not_logged_in();

////////////////////////////////////////////////////////////
if (!current_user_has_permission_to("COPY_TEMPLATE_POPUP_IN_POPUP_MANAGER"))
{
    redirect_to('popup_manager_permission_denied.php?page_name='.CURRENT_PAGE_NAME);
}
```

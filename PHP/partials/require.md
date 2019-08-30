# Require Conventions

- Always use `require_once`
- Don't include spaces
- Use brackets
- Use single quotes for the string

```php
DO THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT.'/custom-code/externals/iris-php-utils/browser_util.php');

NOT THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT . '/custom-code/externals/iris-php-utils/browser_util.php');

NOT THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT . "/custom-code/externals/iris-php-utils/browser_util.php");

NOT THIS:

////////////////////////////////////////////////////////////
require_once DOCUMENT_ROOT . '/custom-code/externals/iris-php-utils/browser_util.php';

////////////////////////////////////////////////////////////
```

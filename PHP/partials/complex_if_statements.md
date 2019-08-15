# Complex If Statements Conventions

If you need to write an if statement with multiple conditions,

- Prefer to use a single variable with the result of all calculations

```php
DO THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = true;
$is_login_session_active_and_cookie_is_valid &= ($login_session['status'] == 'active');
$is_login_session_active_and_cookie_is_valid &= password_verify($cookie, $login_session['cookie_hash']);

if($is_login_session_active_and_cookie_is_valid)
{
    return $username;
}

NOT THIS:

////////////////////////////////////////////////////////////
if
(
    $login_session['status'] == 'active' 
    && password_verify($cookie, $login_session['cookie_hash'])
)
{
    return $username;
}

WORST:

////////////////////////////////////////////////////////////
if($login_session['status'] == 'active' && password_verify($cookie, $login_session['cookie_hash']))
{
    return $username;
}
```

When the operation is `OR` the first value of the variable should be `FALSE`

```php
DO THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_or_cookie_is_valid = false;
$is_login_session_active_or_cookie_is_valid |= ($login_session['status'] == 'active');
$is_login_session_active_or_cookie_is_valid |= password_verify($cookie, $login_session['cookie_hash']);

NOT THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_or_cookie_is_valid = true;
$is_login_session_active_or_cookie_is_valid = ($login_session['status'] == 'active');
$is_login_session_active_or_cookie_is_valid |= password_verify($cookie, $login_session['cookie_hash']);

WORST (and bug):

////////////////////////////////////////////////////////////
$is_login_session_active_or_cookie_is_valid = true;
$is_login_session_active_or_cookie_is_valid |= ($login_session['status'] == 'active');
$is_login_session_active_or_cookie_is_valid |= password_verify($cookie, $login_session['cookie_hash']);
```


When the operation is `AND` the first value of the variable should be `TRUE`

```php
DO THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = true;
$is_login_session_active_and_cookie_is_valid &= ($login_session['status'] == 'active');
$is_login_session_active_and_cookie_is_valid &= password_verify($cookie, $login_session['cookie_hash']);

NOT THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = false;
$is_login_session_active_and_cookie_is_valid = ($login_session['status'] == 'active');
$is_login_session_active_and_cookie_is_valid &= password_verify($cookie, $login_session['cookie_hash']);

WORST (and bug):

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = false;
$is_login_session_active_and_cookie_is_valid &= ($login_session['status'] == 'active');
$is_login_session_active_and_cookie_is_valid &= password_verify($cookie, $login_session['cookie_hash']);
```

Prefer to write the conditions on one line and if the condition is super long place it on 2 lines

```php
DO THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = true;
$is_login_session_active_and_cookie_is_valid &= ($login_session['status'] == 'active');
$is_login_session_active_and_cookie_is_valid &= password_verify($cookie, $login_session['cookie_hash']);

OK:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = true;
$is_login_session_active_and_cookie_is_valid 
&= ($login_session['status'] == 'active');
$is_login_session_active_and_cookie_is_valid 
&= password_verify($cookie, $login_session['cookie_hash']);

NOT THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = false;
$is_login_session_active_and_cookie_is_valid &= ($login_session['status'] == 'active') && password_verify($cookie, $login_session['cookie_hash']);
```

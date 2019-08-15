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

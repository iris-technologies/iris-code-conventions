# Loops conventions

- Use foreach when you can
- Calculate outside of the loop (inside the loop you will evaluate on every loop - bad performance)

```php
DO THIS:

////////////////////////////////////////////////////////////
$all_login_sessions_of_admin = login_sessions_of_admin($_SESSION['username']);
foreach($all_login_sessions_of_admin as $login_session)
{
  ...
}

NOT THIS:

////////////////////////////////////////////////////////////
foreach(login_sessions_of_admin($_SESSION['username']) as $login_session)
{
  ...
}
```

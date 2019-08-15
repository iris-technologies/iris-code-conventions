# Return Statements conventions

When you write return statements don't return functions.

Always return variable with descriptive name.

```php
DO THIS:

////////////////////////////////////////////////////////////
function login_sessions_of_admin($username)
{
    $all_admin_login_type_login_sessions_of_username = prepared_query_as_array
    (
    "
    SELECT * FROM `iris_login_sessions`
        WHERE 
            `username` = ?
            AND `login_type` = 'admin'
    ",
    "s", $username
    );
    
    return $all_admin_login_type_login_sessions_of_username;
}

NOT THIS:

////////////////////////////////////////////////////////////
function login_sessions_of_admin($username)
{
    return prepared_query_as_array(
        "SELECT * FROM `iris_login_sessions`
          WHERE `username` = ?
            AND `login_type` = 'admin'",
        "s", $username
    );
}
```

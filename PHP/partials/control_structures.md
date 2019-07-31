# Syntax blocks Conventions

When you write code with integrated blocks don't write space after the operator

## If-else

```php
DO THIS:
if(current_user_has_permission_to("SCHEDULE_MESSAGES"))
{
    ...
}
else
{
    ...
}

NOT THIS:
if (current_user_has_permission_to("SCHEDULE_MESSAGES"))
{
    ...
}
else
{
    ...
}

NOT THIS:
if ( current_user_has_permission_to ( "SCHEDULE_MESSAGES" ) )
{
    ...
}
else
{
    ...
}
    
```

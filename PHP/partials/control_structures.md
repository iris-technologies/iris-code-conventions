# Syntax blocks Conventions

When you write code with integrated blocks don't write space after the operator.

The general style rules for control structures are as follows:
- No space after the control structure keyword
- No space after the opening parenthesis
- No space before the closing parenthesis
- New line between the closing parenthesis and the opening brace
- The structure body should be indented once
- The closing brace should be on the next line after the body

## If-else

```php
DO THIS:
if(current_user_has_permission_to('SCHEDULE_MESSAGES'))
{
    ...
}
else
{
    ...
}

NOT THIS:
if (current_user_has_permission_to('SCHEDULE_MESSAGES'))
{
    ...
}
else
{
    ...
}

NOT THIS:
if ( current_user_has_permission_to ( 'SCHEDULE_MESSAGES' ) )
{
    ...
}
else
{
    ...
}
    
```

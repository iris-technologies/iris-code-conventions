# Comments Conventions

The rule about comments is to not use them and instead make your code self-documenting.

Instead of writing a comment, create a new function or file.

Create a class only when there is a point to make an object, 
if there is no point to make an object and it will make the code harder to read,
prefer to create new files and functions.

Example:

Instead of writing:

```php
//Here we are going to send the message to the user
...

//Process the response that the user send to us
...
```

Write your code like this:

```php
function send_message_to_the_user($message_to_send)
{
    ...
}
...
send_message_to_the_user($we_have_new_product_message);

function process_user_response($response_to_process)
{
    ...
}
...
$what_user_send_to_us_response = get_what_the_user_send_to_us();
process_user_response($what_user_send_to_us_response);
```

Notice how also all variable names in all scopes have different names. This is important.

Every variable and function name in the entire project should be unique. 
This makes the code easier to understand and you are not going to make bugs by using a wrong variable or function somewhere.
Bugs like this are really hard to track and fix.

Daniel Georgiev

CEO Iris Technologies

2019.07.31

https://iristech.co

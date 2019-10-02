# iris-code-conventions

## Common

Use snake_case for:
- variables
- function names

Use PascalCase for:
- classes

Brackets:
- Always on new line

Examples:

```javascript
DO THIS:

////////////////////////////////////////////////////////////
function open_payment_window() 
{
    ...
}

NOT THIS:

////////////////////////////////////////////////////////////
function OpenPaymentWindow(){
    ...
}

```

Don't write anonymous functions, write normal functions and place them in the clojure

```javascript
DO THIS:
////////////////////////////////////////////////////////////
function open_payment_window() 
{
    ...
}

////////////////////////////////////////////////////////////
$('a').onclick(open_payment_window);

NOT THIS:
////////////////////////////////////////////////////////////
$('a').onclick(function(){
  ...
});

```

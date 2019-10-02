# iris-code-conventions

## Common

Use snake_case for:
- variables
- function names

Use PascalCase for:
- classes

Brackets:
- Always on new line

Separator:
 - Use the separator to separate functions and code logic on top level - [Read about the Separator](https://github.com/iris-technologies/iris-code-conventions-docs/blob/master/Common/the_separator.md)

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

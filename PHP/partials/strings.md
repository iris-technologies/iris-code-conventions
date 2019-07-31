# Strings conventions

## Simple Strings

Use single quote `'` instead of double quotes `"` when it's a simple string without variable in it.

Examples:

```php
DO THIS:

require_once(DOCUMENT_ROOT.'header.php');
...
display_sidebar('schedules');
...
if(isset($_SESSION['page_id']))
{
    ...
}

NOT THIS:
require_once(DOCUMENT_ROOT."header.php");
...
display_sidebar("schedules");
...
if(isset($_SESSION["page_id"]))
{
    ...
}

```

## Multi-line strings

Use single quotes `'` if you are echo-ing HTML instead of double quotes `"`.

All HTML in the project should use double quotes `"`. This is how most websites, libraries and code samples are written on the internet and will work with all browsers

```php
DO THIS:

///////////////////////////////////////////////////////////
function current_schedules_container_card_begin()
{
    echo 
    '
    <div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h2 class="card-title">Current schedules</h2>
            <p class="card-text">  
    ';
}

NOT THIS:

///////////////////////////////////////////////////////////
function current_schedules_container_card_begin()
{
    echo 
    "
    <div class=\"container-fluid\">
    <div class=\"card\">
        <div class=\"card-body\">
            <h2 class=\"card-title\">Current schedules</h2>
            <p class=\"card-text\">  
    ";
}

NOT THIS:

///////////////////////////////////////////////////////////
function current_schedules_container_card_begin()
{
    echo 
    "
    <div class='container-fluid'>
    <div class='card'>
        <div class='card-body'>
            <h2 class='card-title'>Current schedules</h2>
            <p class='card-text'>  
    ";
}
```

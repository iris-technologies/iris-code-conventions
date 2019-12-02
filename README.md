# Iris Technologies Ltd Code Conventions

Here you can find a list of code conventions we use in our company

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

## When to use comments

1. Use comments only inside functions when the algorithms are hard to explain via functions and variable names.
2. There is a high chance that you can explain an algorithm with better variable and function names so just DON'T use comments anywhere in the code. Write good and descriptive variable, function and file names instead.

## When to NOT use comments

1. Don't use comments above functions
2. Don't use comments outside of functions
3. Don't use comments to explain what a variable means. Use better variable name.
3. Don't use comments to explain what a function means. Use better function name.
4. Don't use comments in the code. Make the code self-documenting. Write better variable, function and file names.

## Combining comments with the separator

When you want to combine comments with the separator always write the comment above the separator

```php

DO THIS:

//My comment here
////////////////////////////////////////////////////////////
function some_really_complicated_stuff()
{
}

NOT THIS:

////////////////////////////////////////////////////////////
//My comment here
function some_really_complicated_stuff()
{
}


```

## Notice about varialbe and function names

Notice how also all variable names in all scopes have different names. This is important.

Every variable and function name in the entire project should be unique. 
This makes the code easier to understand and you are not going to make bugs by using a wrong variable or function somewhere.
Bugs like this are really hard to track and fix.

Daniel Georgiev

CEO Iris Technologies

2019.07.31

https://iristech.co

# Why snake_case is better

I started my programming career by writing camelCase and PascalCase but over time I changed to snake_case, 
because we realized that it's much faster and easier to read and in programming, fast and easy is important.

We also did some tests with new people to see how fast they start to understand the code 
and be productive.

The results also told us the same thing.

snake_case is much better, faster and easier to read.

So we made a convention in our company to write all function and variable names in all programming languages in snake_case.

This is also true for Android and Javascript where the default code convention is camelCase.

### We write all function and variable names in all languages snake_case

Over time, however, we also realized that if everything is snake_case, class names are harder to distinguish.

This is how we decided that it's a good idea to change our conventions a bit.

The first idea was to just write the class names like this `Some_object_name` with capital letter at the beginning, 
but after doing some tests again, we found that it's still hard to distinguish between class names and function and variable names.

This is how our second code convention rule was born and this is again in all languages.

## Имена на файлове и папка

### За файлове в PHP:

Ако файла ще се отваря като страница пишем kebab-case.php

Ако файла само се require-ва или е сървиз и не е видим snake_case.php

### За папки:

Ако файловете в папките ще са видими за потребителите и ще се отварят като страници пишем kebab-case/

Ако файловете в папките НЯМА да са видими за потребителите и няма да се отварят като страници пишем snake_case/

snake_case се отнася за папки с файлове, които само се require-ват `php-utils` файлове примерно или папки с файлове, които се извикват като CRON job.

### We write class names in all languages PascalCase

Here is how you can do the code readability test by yourself.

See how fast you can read this text:
-----
> WhySnakecaseIsBetterIStartedMyProgrammingCareerByWritingCamelCaseAndPascalCaseButOverTimeIChangedToSnakecaseBecauseWeRealizedThatItsMuchFasterAndEasierToReadAndInProgrammingFastAndEasyIsImportantWeAlsoDidSomeTestsWithNewPeopleToSeeHowFastTheyStartToUnderstandTheCodeAndBeProductiveTheResultsAlsoToldUsTheSameThingSnakecaseIsMuchBetterFasterAndEasierToReadSoWeMadeaConventionInOurCompanyToWriteAllFunctionAndVariableNamesInAllProgrammingLanguagesInSnakecaseThisIsAlsoTrueForAndroidAndJavascriptWhereTheDefaultCodeConventionIsCamelCaseWeWriteAllFunctionAndVariableNamesInAllLanguagesSnakecaseOverTimeHoweverWeAlsoRealizedThatIfEverythingIsSnakecaseClassNamesAreHarderToDistinguishThisIsHowWeDecidedThatItsaGoodIdeaToChangeOurConventionsaBitTheFirstIdeaWasToJustWriteTheClassNamesLikeThisSomeobjectnameWithCapitalLetterAtTheBeginningButAfterDoingSomeTestsAgainWeFoundThatItsStillHardToDistinguishBetweenClassNamesAndFunctionAndVariableNamesThisIsHowOurSecondCodeConventionRuleWasBornAndThisIsAgainInAllLanguagesWeWriteClassNamesInAllLanguagesPascalCase

>Read Time (avg) : 1 minute and 25 seconds

Then do the same thing with this text:
-----
>_Why_snake_case_is_better_I_started_my_programming_career_by_writing_camelCase_and_PascalCase_but_over_time_I_changed_to_snake_case_because_we_realized_that_it_s_much_faster_and_easier_to_read_and_in_programming_fast_and_easy_is_important_We_also_did_some_tests_with_new_people_to_see_how_fast_they_start_to_understand_the_code_and_be_productive_The_results_also_told_us_the_same_thing_snake_case_is_much_better_faster_and_easier_to_read_So_we_made_a_convention_in_our_company_to_write_all_function_and_variable_names_in_all_programming_languages_in_snake_case_This_is_also_true_for_Android_and_Javascript_where_the_default_code_convention_is_camelCase_We_write_all_function_and_variable_names_in_all_languages_snake_case_Over_time_however_we_also_realized_that_if_everything_is_snake_case_class_names_are_harder_to_distinguish_This_is_how_we_decided_that_it_s_a_good_idea_to_change_our_conventions_a_bit_The_first_idea_was_to_just_write_the_class_names_like_this_Some_object_name_with_capital_letter_at_the_beginning_but_after_doing_some_tests_again_we_found_that_it_s_still_hard_to_distinguish_between_class_names_and_function_and_variable_names_This_is_how_our_second_code_convention_rule_was_born_and_this_is_again_in_all_languages_We_write_class_names_in_all_languages_PascalCase_

>Read Time (avg) : 55 seconds

### What this results tell us and what to watch for

So the reading time of the snake case of this text was with 30 seconds faster but this is not the most important things.

Look at what you remembered and your concentration levels.

We found out that snake_case produces much more concentration and more things are remembered.

# DIY

Here is how you can make a tests like this yourself.

Create a new file and add text as a string.

![text_to_convert](images/text_to_convert.png)

The do the following Regex to get it like camelCase

```javascript
var capitalize_regex = /(\b[a-z](?!\s))/g;
camelCaseText = text_to_convert.replace(capitalize_regex, function(x){return x.toUpperCase();});
var remove_spaces_and_other_special_characters_regex = /[_# ,\r\n.\'\`\"]/gi;
camelCaseText = camelCaseText.replace(remove_spaces_and_other_special_characters_regex, '');
console.log(camelCaseText);
```

And the following Regex to get it like snake_case

```javascript
var remove_spaces_and_other_special_characters_regex = /[_# ,\r\n.\'\`\"]+/gi;
camelCaseText = text_to_convert.replace(remove_spaces_and_other_special_characters_regex, '_');
console.log(camelCaseText);
```

And here is a Full code snippet
```javascript
var text_to_convert = `
# Why snake_case is better

I started my programming career by writing camelCase and PascalCase but over time I changed to snake_case, 
because we realized that it's much faster and easier to read and in programming, fast and easy is important.

We also did some tests with new people to see how fast they start to understand the code 
and be productive.

The results also told us the same thing.

snake_case is much better, faster and easier to read.

So we made a convention in our company to write all function and variable names in all programming languages in snake_case.

This is also true for Android and Javascript where the default code convention is camelCase.

### We write all function and variable names in all languages snake_case

Over time, however, we also realized that if everything is snake_case, class names are harder to distinguish.

This is how we decided that it's a good idea to change our conventions a bit.

The first idea was to just write the class names like this Some_object_name with capital letter at the beginning, 
but after doing some tests again, we found that it's still hard to distinguish between class names and function and variable names.

This is how our second code convention rule was born and this is again in all languages.

### We write class names in all languages PascalCase
`;

var capitalize_regex = /(\b[a-z](?!\s))/g;
camelCaseText = text_to_convert.replace(capitalize_regex, function(x){return x.toUpperCase();});
var remove_spaces_and_other_special_characters_regex = /[_# ,\r\n.\'\`\"]/gi;
camelCaseText = camelCaseText.replace(remove_spaces_and_other_special_characters_regex, '');
console.log(camelCaseText);

var remove_spaces_and_other_special_characters_regex = /[_# ,\r\n.\'\`\"]+/gi;
snake_case_text = text_to_convert.replace(remove_spaces_and_other_special_characters_regex, '_');
console.log(snake_case_text);
```

2019.07.30



Daniel Georgiev

CEO Iris Technologies

https://iristech.co

#Tabs and spaces

The final file should be with 4 spaces.

Set up your editor to convert tabs to spaces if you use tabs while writing code like me:

https://youtu.be/3yFan8s3txw

# The Separator
-----

The separator is a special line with 60 characters that we use everywhere in our code to separate functions, classes and code logic outside functions

It looks like this:

```php
////////////////////////////////////////////////////////////
```

## Rules about the separator

### When to use the separator

1. To separate functions
2. At the end of the file
3. To separate classes
4. To separate logic outside of functions

### When to NOT use the separator

1. Inside of functions, ifs, for, while etc. If you feel the need to use separator you need to create new function to handle the long code
2. Inside class functions in languages like PHP where the method declaration and definition are in one place. There are special conventions for classes in PHP

## Combining comments with the separator

When you want to combine comments with the separator always write the comment above the separator

```php

DO THIS:

//My comment here
////////////////////////////////////////////////////////////
function some_really_complicated_stuff()
{
}

NOT THIS:

////////////////////////////////////////////////////////////
//My comment here
function some_really_complicated_stuff()
{
}


```

## The Discord, Messenger and messaging separator

When you write different things in Discord, Messenger or other app use separator with 5 characters like this:

```
-----
```

To separate between different things you want to say.

Use longer separator with 20 characters if you start to talk about something entirely different.

Use also whitespaces and new lines.

```
--------------------
```

Example:

```
--------------------


I'm going to talk about some topic
-----
something about the topic

something about the topic

something about the topic

something about the topic
-----
something else something else

something else

something else
something elsesomething else

-----
and something more about the topic

--------------------


New topic
-----
something about the topic

something about the topic

something about the topic

something about the topic
-----
something else something else

something else

something else
something elsesomething else

-----
and something more about the topic
```

Daniel Georgiev

CEO Iris Technologies

2019.07.31

https://iristech.co

# Javascript Conventions

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

# Complex If Statements Conventions

Always prefer to write a variable in the if statement instead of calculation or function

## Variable instead of function call

```php
DO THIS:

////////////////////////////////////////////////////////////
$is_cookie_hash_valid = password_verify($cookie, $login_session['cookie_hash']);
if($is_cookie_hash_valid)
{
    ...
}

NOT THIS:

////////////////////////////////////////////////////////////
if(password_verify($cookie, $login_session['cookie_hash']))
{
    ...
}
```

## Multiple conditions

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

### Multiple OR

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

### Multiple AND

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

DO THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = true;
$is_login_session_active_and_cookie_is_valid 
&= ($login_session_which_is_super_long_but_the_next_line_is_not_we_must_be_consistent_if_the_variable_name_is_long_place_all_the_statements_on_new_line['status'] == 'active');
$is_login_session_active_and_cookie_is_valid 
&= password_verify($cookie, $login_session['cookie_hash']);

NOT THIS:

////////////////////////////////////////////////////////////
$is_login_session_active_and_cookie_is_valid = true;
$is_login_session_active_and_cookie_is_valid 
&= ($login_session_which_is_super_long_but_the_next_line_is_not_we_must_be_consistent_if_the_variable_name_is_long_place_all_the_statements_on_new_line['status'] == 'active');
$is_login_session_active_and_cookie_is_valid &= password_verify($cookie, $login_session['cookie_hash']);
```

### Multiple mixed

This is bad code design. Rewrite your code with more variables and more simple if statement

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

////////////////////////////////////////////////////////////
if(current_user_has_permission_to('SCHEDULE_MESSAGES'))
{
    ...
}
else
{
    ...
}

NOT THIS:

////////////////////////////////////////////////////////////
if (current_user_has_permission_to('SCHEDULE_MESSAGES'))
{
    ...
}
else
{
    ...
}

NOT THIS:

////////////////////////////////////////////////////////////
if ( current_user_has_permission_to ( 'SCHEDULE_MESSAGES' ) )
{
    ...
}
else
{
    ...
}
    
```

#End of file

Don't end the file with

```php
?>
```

Leave the file without this and place 

```php
////////////////////////////////////////////////////////////
```

instead

# Правила при писане на PHP код

Пиши прост код без сложни конструкции в езика. Това означава:
- Разделяй проекта на много папки и файлове под 100 реда вместо големи файлове.
- Пиши много функции под 10 реда вместо големи функции
- Пиши функции вместо класове
- Всяко име на променлива в целия проект да е уникално
- Пиши описателни променливи без съкращения от минимум 1 дума
- Не използвай акроними и съкращения. Пиши описателни имена на функции

Прави прости и защитени заявки към базата данни:
- Използвай prepared statements
- Не използвай PDO
- Не използвай raw queries
- Не прави класове за презентация на таблици, използвай добре именувани функции

Таблици и бази данни:
- Не прави нови таблици, опитвай се да преизползваш колони или да добавяш нови колони
- Не прави връзки one-to-many и many-to-many. Използвай уникални идентификатори, които са смислени между таблиците (като email, username и т.н.)
- Не прави таблици за неща, които ще имат само 5-10 реда в таблицата. Използвай нови таблици за данни, които ще надхвърлят 1000 реда, иначе ползвай файлове или .csv таблици

Неща, които да не ползваш без предварително одобрение:
- Класове
- Namespaces
- PDO
- Нови таблици и бази данни

Неща, които да не ползваш никога:
- switch statements. използвай if else

# Как да обясняваме кода

Винаги обяснявай как и защо си направил нещо говорейки на нетехнически човек. 

Обясненията на всичко трябва да са прости и логични.

# Защо правим това

С използването да максимално прости конструкции и неща проектът става по-бърз и лесен за разбиране.

Целта ни е всеки нов човек да разбере под 1 час как работи целия проект и след това да може да почне да пише код.

# Препоръчителна литература

Clean Code: A Handbook of Agile Software Craftsmanship: [Линк към PDF](https://drive.google.com/file/d/1b-BuzIHRxGB993_vtHVD4KE-EOprNKDh/view?usp=sharing) | [Линк към Amazon](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)

The Pragmatic Programmer: From Journeyman to Master: [Линк към PDF](https://drive.google.com/file/d/17Ztm0-YeSQhtHau5y5fGI3s-fYsR0iNh/view?usp=sharing) | [Линк към Amazon](https://www.amazon.com/Pragmatic-Programmer-Journeyman-Master/dp/020161622X)

# HTML in PHP
When you `echo` HTML in PHP

- Use single quotes for the `echo`
- Use Double quotes for the HTML attribute values
- If you have 1 attribute with 1 value - The attribute should be on the same line
- If you have more than 1 attributes - Place every attribute on new line

```php
EXAMPLE:
echo
'
<div class="row align-items-center px-4">
    Delete:
    <!-- Triggers modal -->
    <input 
        type="button" 
        value="Delete" 
        class="btn btn-md btn-danger m-2"
        data-toggle="modal"
        data-target="#delete-from-'.$table_id.'-modal"
    >'

    .modal_for_deleting_from($table_id).

'</div>';
```

Here is how to write Empty HTML element (without closing tag) with multiple attributes
```php
'
<input 
    type="button" 
    value="Delete" 
    class="btn btn-md btn-danger m-2"
    data-toggle="modal"
    data-target="#delete-from-'.$table_id.'-modal"
>
'
```

Here is how to write HTML element (with closing tag) with multiple attributes
```php
'
<div 
    id="test"
    class="row align-items-center px-4"
>
</div>
'
```

Here is how to write HTML element (with closing tag) with 1 attribute
```php
'
<div id="test">
</div>
'
```

# PHP in HTML

When you have mixed PHP and HTML:

- `<?php` should be on new line
- the code should be on new line
- `?>` should be on new line

Example:

```php
DO THIS:

<?php
if ($search != '')
{ 
?>
    <div class="chart-area">
        <canvas id="viewsChart"></canvas>
    </div>
<?php
}
else
{
?>
    <h6 class="m-0 font-weight-bold text-primary">There is no search query</h6>
    <h6 class="m-0 font-weight-bold text-primary">Try: "/"</h6>
<?php
}
?>

NOT THIS:

<div class="card-body">
    <?php if ($search != ''){ ?>
        <div class="chart-area">
            <canvas id="viewsChart"></canvas>
        </div>
    <?php } else {?>
        <h6 class="m-0 font-weight-bold text-primary">There is no search query</h6>
        <h6 class="m-0 font-weight-bold text-primary">Try: "/"</h6>
    <?php }?>
</div>
```

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

# Require Conventions

- Always use `require_once`
- Don't include spaces
- Use brackets
- Use single quotes for the string

```php
DO THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT.'/custom-code/externals/iris-php-utils/browser_util.php');

NOT THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT . '/custom-code/externals/iris-php-utils/browser_util.php');

NOT THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT . "/custom-code/externals/iris-php-utils/browser_util.php");

NOT THIS:

////////////////////////////////////////////////////////////
require_once DOCUMENT_ROOT . '/custom-code/externals/iris-php-utils/browser_util.php';

////////////////////////////////////////////////////////////
```

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

# Strings conventions

## Simple Strings

Use single quote `'` instead of double quotes `"` when it's a simple string without variable in it.

Examples:

```php
DO THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT.'header.php');
...
display_sidebar('schedules');
...
if(isset($_SESSION['page_id']))
{
    ...
}

NOT THIS:

////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT."header.php");
...
display_sidebar("schedules");
...
if(isset($_SESSION["page_id"]))
{
    ...
}

```

## Strings with variables

Use double quotes `"` for the strings with variables.

Just place the variable in the string with double quotes without special syntax or concatenation.

```php
DO THIS:
////////////////////////////////////////////////////////////
$subject = "Hi $name";

NOT THIS:
////////////////////////////////////////////////////////////
$subject = "Hi {$name}";
$subject = "Hi ".$name;
$subject = 'Hi {$name}';
$subject = 'Hi '.$name;

```

## Multi-line strings

### Echo of HTML

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

## Database queries

### Prepared queries

Always use prepared queries instead of raw SQL and ALWAYS, ALWAYS, escape all the variables.

Use double quotes `"` for the strings.

Always use backticks `` ` `` for column, table and database names

```php
DO THIS:
////////////////////////////////////////////////////////////
$query = $GLOBALS['database_connection']->prepare
(
"
    INSERT INTO `iris_messenger_schedules`
    (
        `campaign_name`,
        `user_segment`,
        `status`,
        `start_date`,
        `end_date`,
        `page_id`
    )
    VALUES 
    (
        ?,
        ?,
        'SCHEDULED',
        ?,
        ?,
        ?
    )
"
);
$query->bind_param
(
    'sssss',
    $_POST['block_to_send'],
    $user_segment_json,
    $_POST['start_date'],
    $_POST['end_date'],
    $page_id
);
$query->execute();

NOT THIS:
////////////////////////////////////////////////////////////
$sql =
"
    INSERT INTO `iris_messenger_schedules`
    (
        `campaign_name`,
        `user_segment`,
        `status`,
        `start_date`,
        `end_date`,
        `page_id`
    )
    VALUES 
    (
        '$_POST['block_to_send']',
        '$user_segment_json',
        'SCHEDULED',
        '$_POST['start_date']',
        '$_POST['end_date']',
        '$page_id'
    )
";
$result = execute_query($sql);
```

### If you dare to write Raw SQL

Always use prepared queries instead of raw SQL and ALWAYS, ALWAYS, escape all the variables.

Use double quotes `"` and place all the variables directly into the string if you use them.

Don't use Raw SQL.

```php
DO THIS:
////////////////////////////////////////////////////////////
$sql =
"
    INSERT INTO `app_licenses` 
    (
        `application_name`,
        `activation_code`,
        `machine_fingerprint`,
        `expires_on`
    )
    VALUES 
    (
        '$application_name',
        '$activation_code',
        '$machine_fingerprint',
        '$expires_on'
    );
";
$result = execute_query($sql);

NOT THIS:
////////////////////////////////////////////////////////////
$sql =
'
    INSERT INTO `app_licenses` 
    (
        `application_name`,
        `activation_code`,
        `machine_fingerprint`,
        `expires_on`
    )
    VALUES 
    (
        \''.$application_name.'\',
        \''.$activation_code.'\',
        \''.$machine_fingerprint.'\',
        \''.$expires_on.'\'
    );
';
$result = execute_query($sql);

NOT THIS:
////////////////////////////////////////////////////////////
$sql =
"
    INSERT INTO `app_licenses` 
    (
        `application_name`,
        `activation_code`,
        `machine_fingerprint`,
        `expires_on`
    )
    VALUES 
    (
        '{$application_name}',
        '{$activation_code}',
        '{$machine_fingerprint}',
        '{$expires_on}'
    );
";
$result = execute_query($sql);

NOT THIS:
////////////////////////////////////////////////////////////
$sql =
'
    INSERT INTO `app_licenses` 
    (
        `application_name`,
        `activation_code`,
        `machine_fingerprint`,
        `expires_on`
    )
    VALUES 
    (
        '{$application_name}',
        '{$activation_code}',
        '{$machine_fingerprint}',
        '{$expires_on}'
    );
';
$result = execute_query($sql);
```

Always use prepared queries instead of raw SQL like in the above example whenever possible and ALWAYS, ALWAYS, escape all the variables.

# Beginning of the file

```php
// /path_to_file/file_name.php
////////////////////////////////////////////////////////////

//To test:
//http://localhost/path_to_file/file_name.php
//http://sandbox.iristech.co/path_to_file/file_name.php
//http://iristech.co/path_to_file/file_name.php
//
//Explanation video:
//PLACE_URL_HERE
//Refactoring videos:
//PLACE_URL_HERE
//Code review videos:
//PLACE_URL_HERE
//
//Require as:
//require_once(DOCUMENT_ROOT.'/path_to_file/file_name.php');
////////////////////////////////////////////////////////////

```

Then this is commonly followed by

```php
////////////////////////////////////////////////////////////
if(!defined('DOCUMENT_ROOT'))
{
    define('DOCUMENT_ROOT', $_SERVER['DOCUMENT_ROOT']);
}

////////////////////////////////////////////////////////////
if(!defined('CURRENT_PAGE_NAME'))
{
	define('CURRENT_PAGE_NAME', basename(__FILE__, '.php'));
}

////////////////////////////////////////////////////////////
if(session_status() === PHP_SESSION_NONE)
{
    session_start();
}
```

And then check for permissions:

```php
////////////////////////////////////////////////////////////
require_once(DOCUMENT_ROOT.'/custom-code/externals/iris-php-utils/permission_util.php');
redirect_if_not_logged_in();

////////////////////////////////////////////////////////////
if (!current_user_has_permission_to("COPY_TEMPLATE_POPUP_IN_POPUP_MANAGER"))
{
    redirect_to('popup_manager_permission_denied.php?page_name='.CURRENT_PAGE_NAME);
}
```

# Atom cheatsheet

- Ctrl + F - Търси в страницата
- Ctrl + Shift + F - Търси в целия проект
- Ctrl + Shift + 9 - Отваря Git таба
- Ctrl + Shift + Alt + [ - Свива всичко
- Ctrl + Shift + Alt + ] - Развива всичко
- Alt + стрелка - Слага курсор под или над курсора (За това трябва [multi-cursor](https://atom.io/packages/multi-cursor))

- Маркираш два файла и цъкаш Packages > Compare Files > Compare - Сравнява файловете (За това трябва [compare-files](https://atom.io/packages/compare-files))

## Команди за терминала

- atom path/to/folder - отваря папка в Atom

- apm install multi-cursor - инсталира Atom package (в случая multi-cursor)


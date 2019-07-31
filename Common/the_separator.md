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

## The Discord, Messenger and messaging separator

When you write different things in Discord, Messenger or other app use separator with 5 characters like this:

```php
-----
```

To separate between different things you want to say.

Use longer separator with 20 characters if you start to talk about something entirely different.

```php
--------------------
```

Example:

```php
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

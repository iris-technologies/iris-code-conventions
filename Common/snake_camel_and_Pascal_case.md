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

### We write class names in all languages PascalCase

Here is how you can do the code readability test by yourself.

See how fast you can read this text:
-----
> WhySnakecaseIsBetterIStartedMyProgrammingCareerByWritingCamelCaseAndPascalCaseButOverTimeChangedToSnakecaseBecauseWeRealizedTheItsMuchFasterAndEasierToReadAndInProgrammingFastAndEasyIsImportantWeAlsoDidaTestsWithSomeNewPeopleToSeeHowFastTheyStartToUnderstandTheCodeAndBeProductiveAndTheResultsAlsoToldUsTheSameThingSnakecaseIsMuchBetterFasterAndEasierToReadSoWeMakeaConventionInOurCompanyToWriteAllFunctionAndVariableNamesInAllProgrammingLanguagesToBeSnakecaseThisIsAlsoTrueForAndroidAndJavascriptWhereTheDefaultCodeConventionIsCamelCaseWeWriteAllFunctionAndVariableNamesInAllLanguagesSnakecaseOverTimeHoweverWeAlsoRealizedThatIfEverythingIsSnakecaseClassNamesAreHarderToDistinguishThisIsHowWeDecidedThatItsaGoodIdeaToChangeOurConventionaBitTheFirstIdeaWasToJustWriteTheClassNamesLikeThisSomeobjectnameWithCapitalLetterAtTheBeginningButAfterDoingSomeTestsAgainWeFoundThatItsStillHardToDistinguishBetweenClassNamesAndFunctionAndVariableNamesThisIsHowOurSecondCodeConventionRuleWasBornAndThisIsAgainInAllLanguagesWeWriteClassNamesInAllLanguagesPascalCaseHereIsHowYouCanDoTheCodeReadabilityTestByYourself

>Read Time (avg) : 1 minute and 25 seconds

Then do the same thing with this text:
-----
>_Why_snake_case_is_better_I_started_my_programming_career_by_writing_camelCase_and_PascalCase_but_over_time_changed_to_snake_case_because_we_realized_the_it_s_much_faster_and_easier_to_read_and_in_programming_fast_and_easy_is_important_We_also_did_a_tests_with_some_new_people_to_see_how_fast_they_start_to_understand_the_code_and_be_productive_and_the_results_also_told_us_the_same_thing_snake_case_is_much_better_faster_and_easier_to_read_So_we_make_a_convention_in_our_company_to_write_all_function_and_variable_names_in_all_programming_languages_to_be_snake_case_This_is_also_true_for_Android_and_Javascript_where_the_default_code_convention_is_camelCase_We_write_all_function_and_variable_names_in_all_languages_snake_case_Over_time_however_we_also_realized_that_if_everything_is_snake_case_class_names_are_harder_to_distinguish_This_is_how_we_decided_that_it_s_a_good_idea_to_change_our_convention_a_bit_The_first_idea_was_to_just_write_the_class_names_like_this_Some_object_name_with_capital_letter_at_the_beginning_but_after_doing_some_tests_again_we_found_that_it_s_still_hard_to_distinguish_between_class_names_and_function_and_variable_names_This_is_how_our_second_code_convention_rule_was_born_and_this_is_again_in_all_languages_We_write_class_names_in_all_languages_PascalCase_Here_is_how_you_can_do_the_code_readability_test_by_yourself_

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

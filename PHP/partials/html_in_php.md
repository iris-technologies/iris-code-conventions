# HTML in PHP
When you `echo` HTML in PHP

- Use single quotes for the `echo`
- Use Double quotes for the HTML attribute values
- If you have 1 attribute with 1 value - The attribute should be on the same line
- If you have 1 attribute with multiple values - place the quotes on new line and all values on new line and indent them
- If you have more than 1 attributes - Place every attribute on new line
- 

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

Here is how to write HTML element with 1 attribute and multiple values
```php
<div 
    class=
    "
        card-header
        py-3
        d-flex
        flex-row
        align-items-center
        justify-content-between
    "
>
    ...
</div>
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

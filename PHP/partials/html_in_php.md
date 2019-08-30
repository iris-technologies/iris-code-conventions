When you `echo` HTML in PHP

1. Use single quotes for the `echo`
2. Use Double quotes for the HTML attribute values

```php
EXAMPLE:
echo
'
<div 
    class="row align-items-center px-4"
>
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

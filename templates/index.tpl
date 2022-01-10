<html>
<head>
{$x}
</head>
<body>
<h1>hello, {$fname} {$lname} </h1>
{$Contacts.fax}<br />
{$Contacts.email}<br />
{$Contacts.phone.home} <br />
{$Contacts.phone.cell}<br />
<p> {$contact[0]}<br />
    {$contact[1]}<br />
    {$contact[2].home}<br />
</p>
<p>
{$smarty.now|date_format:'%Y-%m-%d %H:%M:%S'}
</p>
<p>

{* apply modifier to a variable *}
{$fname|upper}

{$articleTitle|cat:' yesterday.'}<br />
{$paragraph}<br />
{$paragraph|count_characters:true}<br />
{$paragraph|count_characters}<br />
{$articles|count_sentences}<br />
{$fname|cat: $lname}<br />
{$default_name|default:'no name'}<br />
<a href="mailto:{$EmailAddress|escape:"hex"}">{$EmailAddress|escape:"hexentity"}</a><br />
{$indent_eg|indent:1:"\t"}<br />
{$example_rep|replace:'Garden':'Vineyard'}<br />
{$example_rep|spacify}<br />
{$example_rep|spacify:"&"}<br />
{$number|string_format:"%d"}<br />
{$number|string_format:"%.2f"}<br />
{$indent_eg|strip}<br />
{$indent_eg|strip:'nbsp:'}<br />
{$indent_eg|truncate:20:"---"}<br />
{$indent_eg|wordwrap:30}<br />

</p>
</body>
</html>
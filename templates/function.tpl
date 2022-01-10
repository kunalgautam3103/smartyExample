{* include  *}
{include file="sub_template.tpl"}
{* assignment  *}
{$users[]="Bob"}
{$users[0]}
<br />
{* append tag *}
{append 'users' "meyer" index="first"}
{$users.first}
<br />
{$foo}<br />
<ul>
{foreach $mypeople as $people }
    <li>{$people@key}: {$people}</li>
{/foreach}
</ul>
{* foreach and if  *}
<ul>
{foreach $mypeople as $people }
{if $people@iteration is div by 2}
<li>hello</li>
{continue}
{/if}
    <li>{$people@key}: {$people}</li>
{/foreach}
</ul>
{foreach $arr as $ar }
{if $ar eq "hello"}
{continue}
{/if}
{$ar}
{/foreach}
{html_image file="ulogo2.png"}
<br />
{* checkbox *}
{html_checkboxes name='id' values=$cust_ids output=$cust_names
   selected=$customer_id  separator='<br />'}
{* radio *}
{html_radios name="id" values=$cust_ids output=$cust_names
selected="1001" separator='" /"'}
{*date select*}
{html_select_date}
<br />
{html_select_date prefix="startdate" start_year='-2'
end_year='+1' display_days=true}
<br />
{* select date *}
{html_select_time use_24_hours=true}<br />
{* table tag *}
{html_table loop=$data}
<table border="1">
<tbody>
<tr><td>1</td><td>2</td><td>3</td></tr>
<tr><td>4</td><td>5</td><td>6</td></tr>
<tr><td>7</td><td>8</td><td>9</td></tr>
</tbody>
</table>
{html_table loop=$data cols="first,second,third,fourth" tr_attr=$tr}
{* table tag *}
<table border="1">
<thead>
<tr>
<th>first</th><th>second</th><th>third</th><th>fourth</th>
</tr>
</thead>
<tbody>
<tr bgcolor="#eeeeee"><td>1</td><td>2</td><td>3</td><td>4</td></tr>
<tr bgcolor="#dddddd"><td>5</td><td>6</td><td>7</td><td>8</td></tr>
<tr bgcolor="#eeeeee"><td>9</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
</tbody>
</table>
<br />
{* textformat*}
  {textformat wrap=40 indent=4}

   This is foo.
   This is foo.
   This is foo.
   This is foo.
   This is foo.
   This is foo.

   This is bar.

   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.

   {/textformat}
   {* mail to tag *}
   <br />
   {mailto address="me@example.com" text="send me some mail"}
   <br />
   {mailto address="me@example.com" encode="javascript_charcode"}
   <br />
   {* maths *}
   {$row_height=20}
   {$row_width=20}  
    {*maths*}
    {math equation="height * width / division"
   height=$row_height
   width=$row_width
   division=40}

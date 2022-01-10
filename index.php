<?php
/*example */
require '../libs/Smarty.class.php';
$smarty = new Smarty;

$smarty->template_dir = 'C:/xampp/htdocs/smarty-master/example/templates';
$smarty->config_dir = 'C:/xampp/htdocs/smarty-master/example/config';
$smarty->cache_dir = 'C:/xampp/smarty-master/example/cache';
$smarty->compile_dir = 'C:/xampp/smarty-master/example/templates_c';
$smarty->assign('fname','kunal');
$smarty->assign('lname','gautam');
$smarty->assign('x',10);
$smarty->assign('y',20);


$smarty->assign('Contacts',
    array('fax' => '555-222-9876',
          'email' => 'zaphod@slartibartfast.example.com',
          'phone' => array('home' => '555-444-3333',
                           'cell' => '555-111-1234')
                           )
         );

         $smarty->assign('contact',
    array('kunal',
          'zaphod@slartibartfast.example.com',
          array('home' => '555-444-3333',
                  'cell' => '555-111-1234')
            )
         );
         
         $smarty->assign('arrays',
         array('kunal gautam',
      'abc@.example.com')
      );
$smarty->assign('paragraph',"welcome to ucertify");

$data = $smarty->createData();
$data->assign('foo','data');
$data->assign('bar','bar-data');
$smarty->assign('articleTitle', "Psychics predict world didn't end");

$smarty->assign('articles',
                 'Two Soviet Ships Collide - One Dies.
                 Enraged Cow Injures Farmer with Axe.'
                 );
$smarty->assign('default_name',"");
$smarty->assign('EmailAddress','smarty@example.com');
$smarty->assign('indent_eg',
                'NJ judge to rule on nude beach.
Sun or rain expected today,     dark tonight.
Statistics show that teen      pregnancy drops off significantly after 25.'
                );
$smarty->assign('example_rep', "Child's Stool Great for Use in Garden.");
$smarty->assign('number', 23.5787446);
$smarty->assign('mypeople',array('fname'=>"aman",
      'lname'=>'kumar',
      'phn'=>'223444'));
$smarty->assign('arr',array('hello','aman'));
$smarty->assign('cust_ids', array(1000,1001,1002,1003));
$smarty->assign('cust_names', array(
                                'Joe Schmoe',
                                'Jack Smith',
                                'Jane Johnson',
                                'Charlie Brown')
                              );
$smarty->assign('customer_id', 1001);
$smarty->assign('data',array(1,2,3,4,5,6,7,8,9));
$smarty->assign('tr',array('bgcolor=>"#eeeeee','bgcolor=>"#dddddd"'));
$smarty->display('index.tpl');
?>
<?php
session_start();
$con=mysqli_connect("localhost","root","","pakmeds");

define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/pakmeds/');
define('SITE_PATH','http://localhost/pakmeds/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');

define('BANNER_SERVER_PATH',SERVER_PATH.'media/banner/');
define('BANNER_SITE_PATH',SITE_PATH.'media/banner/');
?>
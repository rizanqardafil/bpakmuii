<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['product_1/(:any)'] = 'product_1';
$route['product_2/(:any)'] = 'product_2';
$route['photo/(:any)'] = 'photo';
$route['video/(:any)'] = 'video';
$route['default_controller'] = 'home';

$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

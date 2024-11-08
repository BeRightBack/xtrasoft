<?php
// index.php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'vendor/autoload.php';
require 'libs/Database.php';

$db = new Database();
$conn = $db->getConnection();

if (!$conn) {
    die('Database connection failed');
}

$smarty = new Smarty();

$smarty->setTemplateDir(__DIR__ . '/templates');
$smarty->setCompileDir(__DIR__ . '/templates_c');
$smarty->setConfigDir(__DIR__ . '/configs');
$smarty->setCacheDir(__DIR__ . '/cache');

// Define base URL dynamically
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
$base_url = $protocol . $_SERVER['HTTP_HOST'] . dirname($_SERVER['SCRIPT_NAME']);
$smarty->assign('base_url', $base_url);
// Assign variables
$smarty->assign('name', 'World');

// Display template
$smarty->display('index.tpl');